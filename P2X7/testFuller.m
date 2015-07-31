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

global baseParameters fparam parami nbin Acell calP2X7 iparam;

nbin=1000;





%paramNames={'k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','r1','r2','kca','koff','C','V','A'};
paramNames={'k1','K1','k3','K2','k5','K3','k7','K5','k9','K6','k11','K7','k13','K9','k15','K10','k17','K11','L1','K4','L3','L4','L5','K8','H1','K12','H7','g12','g34','E12','E34','A','V'};

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
fparam('k1')=1;
 fparam('K1')=1;
% fparam('k3')=1;
 fparam('K2')=1;
fparam('k5')=1;
fparam('K3')=1;
fparam('k7')=1;
fparam('K5')=1;
 fparam('k9')=1;
fparam('K6')=1;
  fparam('k11')=1;
 fparam('K7')=1;
fparam('k13')=1;
fparam('K9')=1;
fparam('k15')=1;
fparam('K10')=1;
fparam('k17')=1;
fparam('K11')=1;
%  fparam('L1')=1;
  fparam('K4')=1;
 fparam('L3')=1;
%   fparam('L4')=1;
   fparam('L5')=1;
    fparam('K8')=1;
    

% fparam('r1')=0;
% fparam('r2')=0;
% fparam('kca')=0;
% fparam('koff')=0;


% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% fparam('H5')=1;
fparam('K12')=1;
fparam('H7')=1;


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
[err1,Ncell] = cellDataError(exp1,fullerP2X7);
[err2,Ncell] = cellDataError(exp3,fullerP2X7);
[err3,Ncell]=cellDataError(exp10,fullerP2X7);
[err4,Ncell]=cellDataError(exp32,fullerP2X7);
[err5,Ncell]=cellDataError(exp100,fullerP2X7);


err1=normDataError(exp1,fullerP2X7,0.1);
err2 = normDataError(exp3,fullerP2X7,0.001);
err3=normDataError(exp10,fullerP2X7,1000);
err4=normDataError(exp32,fullerP2X7,1);
err5=normDataError(exp100,fullerP2X7,40);
%low ATP
%[err,Ncell] = cellDataError(exp3ca,calP2X7,exp10ca,calP2X7,exp1,calP2X7,exp3,calP2X7);

%[err,Ncell] = cellDataError(exp1,calP2X7,exp3,calP2X7);


% Parameters in a struct, argument is # of temperature levels


L=4;
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
Niter = 10^2;

% Run the PT with cell heterogeneities
[X, m, R, theta, beta, stats, sse, XA] = cell_adaptive_pt(@(x,l) -(err1(x,l)), param, Niter, 3);

continueChain(X,beta);

save(['calBindingLow' num2str(Niter) '_steps@' num2str(L) '_levels_' datestr(now,30) '.mat' ],'X','beta','sse','R','fparam','baseParameters','parami','XA','iparam')



cf(1);chainConvergence(X,beta,sse);

cf(9);plotDensity(sse(:));

goodSamples=cullChain(X,sse, 10^4);

%cf(2);chainDistributions(goodSamples);


%updateParams(varNames,varsFinal(:,1),paramNames,params);
Acell=1;

cf(13);plotPanelsResponse(fullerP2X7);

%cf(3);plotChainPanels(fullerP2X7,goodSamples,15);





%cf(4);plot(1:Niter,squeeze(XA));
 

% K1= 6.24154e+05,, K2= 4.55641e+05, K3= 2.18614e+03, K4= 7.78188e+01, K5= 2.33001e+08, L1= 7.09617e-02, L3= 3.75760e+00, k1= 1.85130e-01, k3= 1.95623e-02, k5= 6.41368e-01, k7= 2.17834e-03


 %cf(5);plotChainLow(fullP2X7,goodSamples,10);
 %cf(6);plotChainMed(calP2X7,goodSamples,10);
 
 %cf(7);plotNaiveResponse(exp100,fullerP2X7);