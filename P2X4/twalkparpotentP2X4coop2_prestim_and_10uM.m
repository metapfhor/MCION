global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% % fparam('a1')=1;
% fparam('g2')=1;
% fparam('E1')=0;
% fparam('E2')=0;
% % 
% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;
% 
% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;

% fparam('v1')=1;
% fparam('v2')=1;
% fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;



% 
% fparam('L1')=1;
% fparam('L2')=1;
% fparam('L3')=1;
% fparam('L4')=1;
% fparam('L5')=1;
% fparam('L6')=1;
% 
% fparam('ku0')=1;
% fparam('kd0')=1;
% fparam('ku1')=1;
% fparam('kd1')=1;
% fparam('ku2')=1;
% fparam('kd2')=1;
% fparam('ku3')=1;
% fparam('kd3')=1;
% fparam('alpha')=1;
% 
% % fparam('a1')=1;
% % fparam('a2')=1;
% % fparam('a3')=1;
% 
fparam('rho1')=1;
fparam('rho2')=1;
fparam('rho3')=1;

% 
% fparam('L6')=1;
% 
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% 
% fparam('V')=0;
% fparam('epsilon')=1;
% fparam('delta')=1;
% fparam('mu')=1;
% 
% fparam('n1')=1;
% fparam('n2')=1;
% fparam('n3')=1;

fparam('A')=0;
fparam('J')=0;

vals=fparam.values;
Npar=sum([vals{:}]);

pMax('L1')=50;
pMax('L4')=10;
pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=5e-6;
pMin('epsilon')=1e-6;
pMax('delta')=1e-6;
pMin('delta')=0;
pMin('v1')=0.09;
pMax('v2')=0.07;
% pMax('k11')=100;
pMax('ku0')=1000;
pMax('ku1')=100;
pMax('ku2')=100;
pMax('ku3')=1000;
pMax('kd0')=10^8;
pMax('kd1')=10^8;



pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4coop2);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4coop2);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4coop2);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4coop2);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4coop2);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4coop2);

err7 = normPrestimDoseError(potentP2X4coop2);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4coop2);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err2,err3,err4,@(x) 1000*err7(x)}},'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse(' r1= [4.60557e-05, 3.57874e-05], r2= [8.59864e+01, 9.78616e+01], r3= [3.57661e+02, 5.62508e+02], rho1= [6.87060e-02, 3.96497e-03], rho2= [2.47779e+00, 1.30108e+00], rho3= [1.71848e+04, 1.37007e+04]');

Niter=100;
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

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 cf(2);chainDistributions(unravelChain(xxp));
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4coop2);
% 
% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4coop2);
% 
cf(6);plotNaiveResponse(pulse3IVM,potentP2X4coop2);

cf(7);plotNaiveResponse(pulse10IVM,potentP2X4coop2);

% cf(8);plotNaiveResponse(prol3IVM,potentP2X4coop2);

% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4coop2);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4coop2);


    
continueChain(x0);
 
% 
% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4coop2);

% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4coop2);
% 
% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4coop2);
% 
cf(17);plotNaiveResponse(pulse10IVM,potentP2X4coop2);
% 
% cf(18);plotNaiveResponse(prol3IVM,potentP2X4coop2);

% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4coop2);

cf(20);prestimDoseResponses(potentP2X4coop2);

%  cf(20);chainPrestimDoseResponse(x0,potentP2X4coop2);




 

save(['twalk_potentP2X4coop2_preStim_and_10uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


