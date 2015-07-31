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

global baseParameters fparam parami iparam nbin Acell calP2X7;

nbin=1000;





paramNames={'k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','r1','r2','kca','koff','C','V','A','n','EC1','EC2','EC3'};

%fparam=oneMap(paramNames{:});
fparam=zeroMap(paramNames{:});%all parameters must be determined
% 
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

fparam('r1')=0;
fparam('r2')=0;
fparam('kca')=0;
fparam('koff')=0;


fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
%fparam('H4')=1;
%fparam('H5')=1;
fparam('H6')=1;
fparam('H7')=1;

fparam('EC1')=0;
fparam('EC2')=0;
fparam('EC3')=0;
fparam('n')=0;


%probably need all other params to converge first


restart=true;

% The name of the target distribution

%error for paperParams on rise 3 is NA
%err = dataError(rise3,ThreeP2X7,rise32,FourP2X7);
%%err = dataError(rise3,FourP2X7,rise10,FourP2X7,rise32,FourP2X7);
%[err,Ncell] = cellDataError(exp1,calP2X7,exp3,calP2X7,exp32,calP2X7,exp100,calP2X7);

%All
%[err,Ncell] = cellDataError(exp3ca,calP2X7,exp10ca,calP2X7,exp32ca,calP2X7,exp100ca,calP2X7,exp320ca,calP2X7,exp1,calP2X7,exp3,calP2X7,exp10,calP2X7,exp32,calP2X7,exp100,calP2X7);

%High ATP
%[err,Ncell] = cellDataError(exp32ca,calP2X7,exp100ca,calP2X7,exp320ca,calP2X7,exp10,calP2X7,exp32,calP2X7,exp100,calP2X7);

%No Cal, High ATP
[err1,Ncell] = cellDataError(exp1,hill3P2X7);
[err2,Ncell]=cellDataError(exp10,hill3P2X7);
[err3,Ncell]=cellDataError(exp100,hill3P2X7);


%low ATP
%[err,Ncell] = cellDataError(exp3ca,calP2X7,exp10ca,calP2X7,exp1,calP2X7,exp3,calP2X7);

%[err,Ncell] = cellDataError(exp1,calP2X7,exp3,calP2X7);


% Parameters in a struct, argument is # of temperature levels


L=8;
vals=fparam.values;
Npar=sum([vals{:}]);
if exist('R','var') & size(R)==[Npar,Npar,L] & exist('goodSamples','var') %may produce some param mismatch at first but always better than identity
    param = buildParameterSet(L,goodSamples,R);
else
    if exist('goodSamples','var')
         param = buildParameterSet(L,goodSamples);
    else
        param = buildParameterSet(L,[]);
    end
    
end

% Number of iterations
Niter =4*10^2;

% Run the PT with cell heterogeneities
[X, m, R, theta, beta, stats, sse, XA] = cell_adaptive_pt(@(x,l) -(10000*err1(x,l)+(err3(x,l)+err2(x,l))/10), param, Niter, 3);

cf(1);chainConvergence(X,beta,sse);

save(['complexiation' num2str(Niter) '_steps@' num2str(L) '_levels_' datestr(now,30) '.mat' ],'X','beta','sse','R','fparam','baseParameters','parami','XA','iparam')

%cf(9);plotDensity(sse(sse<4.5*10^9));

goodSamples=cullChain(X,sse,881984.1990927);

%cf(2);chainDistributions(goodSamples);

continueChain(X,beta);
%updateParams(varNames,varsFinal(:,1),paramNames,params);
Acell=1;



cf(4);plot(1:Niter,squeeze(XA));
 




 %cf(5);plotChainLow(fullP2X7,goodSamples,10);
 %cf(6);plotChainMed(calP2X7,goodSamples,10);
 
 %cf(7);plotNaiveResponse(exp100,fullP2X7);
 %cf(8);plotPanels(fullP2X7);