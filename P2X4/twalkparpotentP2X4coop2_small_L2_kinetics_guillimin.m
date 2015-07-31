global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();

loadData();
load('twalk_potentP2X4coop2_all_kinetics1000_steps@20141016T111125.mat')

%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% fparam('a1')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;
% 
fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
% 
% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;



% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;
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
fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;
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

pMax('L2')=0.1;
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

% err7 = normPrestimDoseError(potentP2X4coop2);


etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4coop2);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30);


p = struct('globalStruct',globalStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6}},'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
% [x0,xp0]=twalkStringParse('H1= [1.55979e-02, 1.30971e-02], H2= [1.81086e-01, 1.51406e-01], H3= [1.49026e-01, 7.66633e-02], H4= [1.23865e-03, 9.50376e-04], L1= [2.47167e+00, 2.46236e+00], L2= [8.64960e-01, 9.05793e-01], L3= [4.44944e-03, 4.01001e-03], L4= [1.00880e-01, 8.97014e-02], L5= [6.44131e-02, 5.72898e-02], L6= [1.42026e-01, 8.53869e-02], g1= [3.30431e-08, 3.02978e-08], g2= [1.36034e-07, 1.70753e-07], k1= [1.81149e+00, 1.08268e+00], k2= [1.10028e+06, 2.36261e+06], k3= [6.17393e+00, 1.03810e+01], k4= [2.05859e+06, 8.72931e+05], k5= [5.33896e+00, 4.65739e+00], k6= [2.33903e+07, 9.69819e+07], r1= [2.99698e+00, 2.59049e+00], r2= [3.33989e-01, 2.39001e-01], r3= [1.52939e-01, 1.96828e-01], rho1= [7.19107e-01, 1.17027e+00], rho2= [1.00000e+00, 2.13015e-01], rho3= [1.00000e+00, 6.08293e-01], v1= [9.57382e-01, 9.96077e-01], v2= [7.56541e-02, 5.33216e-02], v3= [2.99475e-03, 5.36933e-03]');

Niter=1000;
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
    

 
    
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4coop2);
 
cf(5);plotNaiveResponse(pulse1IVM,potentP2X4coop2);

cf(6);plotNaiveResponse(pulse3IVM,potentP2X4coop2);

cf(7);plotNaiveResponse(pulse10IVM,potentP2X4coop2);

cf(8);plotNaiveResponse(prol3IVM,potentP2X4coop2);

cf(9);plotNaiveResponse(prol2noIVM,potentP2X4coop2);

%  cf(10);chainPrestimDoseResponse(xp0,potentP2X4coop2);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potentP2X4coop2);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4coop2);
 
cf(16);plotNaiveResponse(pulse3IVM,potentP2X4coop2);

cf(17);plotNaiveResponse(pulse10IVM,potentP2X4coop2);

cf(18);plotNaiveResponse(prol3IVM,potentP2X4coop2);

cf(19);plotNaiveResponse(prol2noIVM,potentP2X4coop2);

 cf(20);prestimDoseResponses(potentP2X4coop2);

%  cf(20);chainPrestimDoseResponse(x0,potentP2X4coop2);




 

save(['twalk_potentP2X4coop2_all_kinetics' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


