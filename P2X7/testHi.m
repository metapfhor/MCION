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

global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel;

nbin=1000;

baseModel= fullP2X7;



paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','r1','r2','kca','koff','C','V','A'};

%fparam=oneMap(paramNames{:});
fparam=zeroMap(paramNames{:});%all parameters must be determined
% 
fparam('g12')=1;
fparam('g34')=1;
fparam('E12')=0;
fparam('E34')=0;

% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;
fparam('k1')=1;
fparam('k2')=1;
% fparam('k3')=1;
fparam('k4')=1;
% fparam('k5')=1;
fparam('k6')=1;
fparam('k7')=1;
fparam('k8')=1;
fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;
fparam('L2')=1;
% fparam('L3')=1;
% fparam('L1')=1;
% fparam('L5')=1;
% fparam('L6')=1;
% fparam('L4')=0;
% 
% fparam('r1')=0;
% fparam('r2')=0;
% fparam('kca')=0;
% fparam('koff')=0;
% 
% 
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% fparam('H5')=1;
% fparam('H6')=1;
% fparam('H7')=1;
% 

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
[err0,Ncell] = dataEnsembleError(exp1,fullP2X7);
[err1,Ncell] = dataEnsembleError(exp10,fullP2X7);
[err2,Ncell] = dataEnsembleError(exp32,fullP2X7);
[err3,Ncell]= dataEnsembleError(exp100,fullP2X7);

[err1a,Ncell] = dataEnsembleError(exp10.activation,fullP2X7);
[err2a,Ncell] = dataEnsembleError(exp32.activation,fullP2X7);
[err3a,Ncell]= dataEnsembleError(exp100.activation,fullP2X7);


%low ATP
%[err,Ncell] = cellDataError(exp3ca,calP2X7,exp10ca,calP2X7,exp1,calP2X7,exp3,calP2X7);

%[err,Ncell] = cellDataError(exp1,calP2X7,exp3,calP2X7);


% Parameters in a struct, argument is # of temperature levels


L=6;
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
Niter =3*10^2;

% Run the PT with cell heterogeneities
[X, m, R, theta, beta, stats, sse, XA] = cell_adaptive_pt(@(x) -(err0(x)+err3a(x)+err1a(x)+err2a(x)), param, Niter, 2);

cf(1);chainConvergence(X,beta,sse);


continueChain(X,beta);

save(['calBindingHi' num2str(Niter) '_steps@' num2str(L) '_levels_' datestr(now,30) '.mat' ],'X','beta','sse','R','fparam','baseParameters','parami','XA','iparam','parami')

cf(9);plotDensity(sse(:,1));

goodSamples=cullChain(X,sse,8600);

% cf(2);chainDistributions(X);

%updateParams(varNames,varsFinal(:,1),paramNames,params);
Acell=1;



% cf(3);plotChainPanels(fullP2X7,goodSamples,10);

 cf(13);plotPanelsResponse(fullP2X7);
 cf(14);plotPanelsActivation(fullP2X7);




 %cf(5);plotChainLow(fullP2X7,goodSamples,10);
 %cf(6);plotChainMed(calP2X7,goodSamples,10);
 
 %cf(7);plotNaiveResponse(exp100,fullP2X7);
 %cf(8);plotPanels(fullP2X7);