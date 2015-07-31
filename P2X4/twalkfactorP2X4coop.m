global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;


% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;
% 
% fparam('k13')=1;
% fparam('k14')=1;
% fparam('k15')=1;
% fparam('k16')=1;
% fparam('k17')=1;
% fparam('k18')=1;
% 
% fparam('k19')=1;
% fparam('k20')=1;
% fparam('k21')=1;
% fparam('k22')=1;
% fparam('k23')=1;
% fparam('k24')=1;
% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
% 
fparam('L5')=1;
fparam('L6')=1;
% 
fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;
% 
% fparam('V')=0;
fparam('epsilon')=1;
fparam('delta')=1;
fparam('mu')=1;

fparam('alpha')=1;
fparam('beta')=1;
fparam('gamma')=1;

% 
% fparam('n1')=1;
% fparam('n2')=1;
% fparam('n3')=1;

fparam('A')=0;
fparam('J')=0;

vals=fparam.values;
Npar=sum([vals{:}]);

pMax('L1')=50;
pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=3e-6;
pMin('epsilon')=1e-6;
pMax('delta')=1e-6;
pMin('delta')=0;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,factorP2X4coop);
[err2] = normDataErrorOmar(pulse1IVM,factorP2X4coop);
[err3] = normDataErrorOmar(pulse3IVM,factorP2X4coop);
[err4] = normDataErrorOmar(pulse10IVM,factorP2X4coop);
[err5] = normDataErrorOmar(prol3IVM,factorP2X4coop);
[err6] = normDataErrorOmar(prol2noIVM,factorP2X4coop);

etot = @(x) 1000*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    




p = struct('logPrior', @(x) 1, 'logLikelihood',@(x) -(etot(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
if exist('xp0','var')==0 || ~all(size(x0)==size(xp0))
   xp0 = x0.*(1+0.4*randn(size(x0)));
end
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse(' H1= [1.94748e-03, 1.96615e-03], H2= [2.06632e-01, 2.13721e-01], H3= [6.28229e-01, 2.64311e-02], H4= [1.14288e-03, 1.02554e-03], L1= [2.46243e+00, 3.10065e+00], L2= [2.37762e+00, 2.48154e+00], L3= [5.32060e-04, 3.44823e-03], L4= [5.40938e-02, 6.76087e-02], L5= [9.54446e-02, 2.30603e-01], L6= [9.31176e-01, 5.24010e-01], delta= [6.18815e-08, 4.06461e-07], epsilon= [2.95368e-06, 2.76311e-06], g1= [3.69323e-08, 3.78611e-08], g2= [1.05096e-07, 1.01398e-07], k1= [1.46203e+00, 1.16070e+00], k2= [3.37696e+05, 3.16214e+05], k3= [6.93624e+00, 2.44766e+00], k4= [1.48771e+07, 7.38057e+06], k5= [4.68220e+00, 8.61674e+00], k6= [5.24297e+07, 4.66957e+07], mu= [6.06417e-06, 8.53293e-06], r1= [9.72611e-01, 1.79893e+00], r2= [4.75109e-01, 6.30201e-01], r3= [2.21434e-01, 2.02109e-01], v1= [3.68783e-01, 2.34839e-01], v2= [8.17484e-02, 9.39769e-02], v3= [1.53695e-02, 3.65991e-04]');

Niter=4000;
0;
hold off

%  cf(13);
% cf(14);
% for count = 1:ceil(Niter/Nplot)
%     [xxp,lt,acc] = twalkparam('logTarget',Nplot,x0,xp0,p); 
%     [x0,xp0] = twalkEnds(xxp);
%     continueChain(x0);
% 	figure(13);plotPanelsResponse(fullP2X7);
% % 	plotPanelsActivation(fullP2X7);
%     continueChain(xp0);
%     figure(14);plotPanelsResponse(fullP2X7);
%     drawnow
% 
% 	
% end

disp(['Initial Parameters:', tchainString(x0,xp0)])

[xxp,lt,acc] = twalkreflect('logTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
    
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,factorP2X4coop);

cf(5);plotNaiveResponse(pulse1IVM,factorP2X4coop);

cf(6);plotNaiveResponse(pulse3IVM,factorP2X4coop);

cf(7);plotNaiveResponse(pulse10IVM,factorP2X4coop);

cf(8);plotNaiveResponse(prol3IVM,factorP2X4coop);

cf(9);plotNaiveResponse(prol2noIVM,factorP2X4coop);


    
continueChain(x0);
 
cf(14);plotNaiveResponse(pulse0IVM,factorP2X4coop);

cf(15);plotNaiveResponse(pulse1IVM,factorP2X4coop);

cf(16);plotNaiveResponse(pulse3IVM,factorP2X4coop);

cf(17);plotNaiveResponse(pulse10IVM,factorP2X4coop);

cf(18);plotNaiveResponse(prol3IVM,factorP2X4coop);

cf(19);plotNaiveResponse(prol2noIVM,factorP2X4coop);



 

save(['twalk_factorP2X4coop_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


