% test script to try the adaptive parallel tempering

% test.m
% 
% Copyright (c) Blazej Miasojedow, Eric Moulines and Matti Vihola 2012
% 
% This file is part of the implementation of the Adaptive Parallel 
% tempering algorithm (hereafter "APT"); see http://arxiv.org/abs/1205.1076.
% 
% APT is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% APT is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with APT.  If not, see <http://www.gnu.org/licenses/>.

global baseParameters fparam parami nbin;

nbin=1000;





paramNames={'k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','r','kca','koff','C'};

%fparam=oneMap(paramNames{:});
fparam=zeroMap(paramNames{:});%all parameters must be determined

fparam('g12')=0;
fparam('g34')=0;
fparam('E12')=0;
fparam('E34')=0;

fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L1')=1;

fparam('r')=1;
fparam('kca')=1;
fparam('koff')=1;


fparam('H1')=1;
fparam('H2')=0;
fparam('H3')=0;
fparam('H4')=0;
fparam('H5')=0;
fparam('H6')=0;
fparam('H7')=1;


%probably need all other params to converge first


restart=true;

% The name of the target distribution

%error for paperParams on rise 3 is NA
%err = dataError(rise3,ThreeP2X7,rise32,FourP2X7);
%%err = dataError(rise3,FourP2X7,rise10,FourP2X7,rise32,FourP2X7);
%err = dataError(exp1,calP2X7,exp3,calP2X7,exp32,calP2X7,exp100,calP2X7);

baseParameters('C')=2*10^-3;
err = dataError(exp3ca,calP2X7,exp10ca,calP2X7,exp32ca,calP2X7,exp100ca,calP2X7,exp320ca,calP2X7);


% Parameters in a struct, argument is # of temperature levels


L=4;
vals=fparam.values;
Npar=sum([vals{:}]);
if exist('R','var') & size(R)==[Npar,Npar,L] %may produce some param mismatch at first but always better than identity
    param = buildParameterSet(L,goodSamples,R);
else
    if exist('goodSamples','var')
         param = buildParameterSet(L,goodSamples);
    else
        param = buildParameterSet(L,[]);
    end
end

% Number of iterations
N =10^4;

% Run the PT
[X, m, R, theta, beta, stats, sse] = adaptive_pt(@(x,l) -err(x,l), param, N);

cf(1);chainConvergence(X,beta,sse);


cf(9);plotDensity(sse(sse<1*10^5));

goodSamples=cullChain(X,sse,3*10^4);

cf(2);chainDistributions(goodSamples);

continueChain(X,beta);
%updateParams(varNames,varsFinal(:,1),paramNames,params);

cf(3);plotChainPanels(calP2X7,X,15);


save(['calBinding' num2str(N) '_steps@' num2str(L) '_levels_' datestr(now,30) '.mat' ],'X','beta','sse','R','fparam','baseParameters','parami')

