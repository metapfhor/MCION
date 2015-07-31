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

global baseParameters fparam parami nbin Acell calP2X7 iparam x0;

nbin=1000;





%paramNames={'k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','r1','r2','kca','koff','C','V','A'};
paramNames={'K1','k1','K2','k3','K3','k5','K4','L3','K5','k7','K6','k9','K7','k11','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','koff','C','V','A'};

%fparam=oneMap(paramNames{:});
fparam=zeroMap(paramNames{:});%all parameters must be determined

fparam('g12')=0;
fparam('g34')=0;
fparam('E12')=0;
fparam('E34')=0;

% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;
fparam('K1')=1;
 fparam('K2')=1;
fparam('K3')=1;
fparam('K4')=1;
 fparam('K5')=1;
fparam('K6')=1;
fparam('K7')=1;
fparam('k1')=1;
fparam('k3')=1;
fparam('k5')=1;
fparam('k7')=1;
 fparam('k9')=1;
fparam('k11')=1;
% % fparam('L1')=1;
fparam('L3')=1;

% fparam('r1')=0;
% fparam('r2')=0;
% fparam('kca')=0;
% fparam('koff')=0;


% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% fparam('H5')=1;
% fparam('H6')=1;
% fparam('H7')=1;


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
[err1,Ncell] = cellDataError(exp1,fullP2X7Therm);
[err2,Ncell] = cellDataError(exp3,fullP2X7Therm);
[err3,Ncell]=cellDataError(exp10,fullP2X7Therm);
[err4,Ncell]=cellDataError(exp32,fullP2X7Therm);
[err5,Ncell]=cellDataError(exp100,fullP2X7Therm);


err1=normDataError(exp1,fullP2X7Therm,0.01);
err2=normDataError(exp3,fullP2X7Therm,0.01);

err3=normDataError(exp10,fullP2X7Therm,0.001);

err5=normDataError(exp100,fullP2X7Therm,0.001);
%low ATP
%[err,Ncell] = cellDataError(exp3ca,calP2X7,exp10ca,calP2X7,exp1,calP2X7,exp3,calP2X7);

%[err,Ncell] = cellDataError(exp1,calP2X7,exp3,calP2X7);


% Parameters in a struct, argument is # of temperature levels


L=4;
vals=fparam.values;
Npar=sum([vals{:}]);
if exist('R','var') & size(R,1)==Npar & size(R,1)==Npar 
    param = buildEnsembleParameterSet(L,R);
else
    param = buildEnsembleParameterSet(L);
end

% Number of iterations
Niter = 10^3;

% Run the PT with cell heterogeneities
[X, m, R, theta, beta, stats, sse] = ensemble_adaptive_pt({@(x) -err1(x),@(x) -err2(x), @(x) -err3(x), @(x) -err5(x)}, param, Niter);


save(['calBindingEns' num2str(Niter) '_steps@' num2str(L) '_levels_' datestr(now,30) '.mat' ],'X','beta','sse','R','fparam','baseParameters','x0','parami','XA','iparam')




cf(1);chainConvergence(X,beta,sse);

continueChain(X,beta);

sumSSE=squeeze(sum(sse,2));
cf(9);plotDensity(sumSSE(1,:));

goodSamples=cullChain(X,sse,15000);

%cf(2);chainDistributions(goodSamples);


%updateParams(varNames,varsFinal(:,1),paramNames,params);
Acell=1;

cf(13);plotEnsemblePanelsResponse(fullP2X7Therm);

%cf(3);plotChainPanels(fullP2X7Therm,goodSamples,30);





%cf(4);plot(1:Niter,squeeze(XA));
 

% K1= 6.24154e+05,, K2= 4.55641e+05, K3= 2.18614e+03, K4= 7.78188e+01, K5= 2.33001e+08, L1= 7.09617e-02, L3= 3.75760e+00, k1= 1.85130e-01, k3= 1.95623e-02, k5= 6.41368e-01, k7= 2.17834e-03


 %cf(5);plotChainLow(fullP2X7,goodSamples,10);
 %cf(6);plotChainMed(calP2X7,goodSamples,10);
 
 %cf(7);plotNaiveResponse(exp100,fullP2X7Therm);