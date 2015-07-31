global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% fparam('a1')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;
% 
% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;

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
fparam('a1')=1;
% fparam('a2')=1;
% fparam('a3')=1;

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

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potent1P2X4coop);
[err2] = normDataErrorOmar(pulse1IVM,potent1P2X4coop);
[err3] = normDataErrorOmar(pulse3IVM,potent1P2X4coop);
[err4] = normDataErrorOmar(pulse10IVM,potent1P2X4coop);
[err5] = normDataErrorOmar(prol3IVM,potent1P2X4coop);
[err6] = normDataErrorOmar(prol2noIVM,potent1P2X4coop);

err7 = normPrestimDoseError(potent1P2X4coop);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potent1P2X4coop);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err2,err3,err4,err5}},'bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse('H1= [6.80714e-04, 6.48993e-04], H2= [3.19302e-01, 3.87874e-01], H3= [2.82985e-01, 2.62757e-01], H4= [8.29128e-04, 9.81087e-04], L1= [9.64646e-02, 1.23100e-01], L2= [1.14040e-01, 2.83795e-01], L3= [1.19812e-02, 1.14747e-02], L4= [2.59336e-02, 9.81684e-03], L5= [3.71291e-01, 4.65578e-01], L6= [2.02342e+00, 1.55637e+00], g1= [6.14228e-08, 6.27904e-08], g2= [1.29253e-07, 1.59956e-07], k1= [2.25772e+01, 5.08993e+00], k2= [1.82280e+05, 1.71553e+05], k3= [5.15405e+00, 3.19043e+00], k4= [5.70276e+08, 3.02216e+08], k5= [6.61677e+02, 8.18623e+02], k6= [2.36647e+07, 1.97011e+07], r1= [1.41895e+00, 1.74767e+00], r2= [1.83029e+00, 2.28294e+00], r3= [2.90851e-01, 3.34019e-01], rho1= [2.18800e+01, 2.87739e+01], rho2= [1.76261e-01, 4.94991e-01], rho3= [2.91797e+00, 3.47348e+00], v1= [2.61738e-01, 2.69290e-01], v2= [4.32843e-02, 5.20185e-02], v3= [1.22268e-05, 1.58271e-05]');

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

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,potent1P2X4coop);

cf(5);plotNaiveResponse(pulse1IVM,potent1P2X4coop);

cf(6);plotNaiveResponse(pulse3IVM,potent1P2X4coop);

cf(7);plotNaiveResponse(pulse10IVM,potent1P2X4coop);

cf(8);plotNaiveResponse(prol3IVM,potent1P2X4coop);

cf(9);plotNaiveResponse(prol2noIVM,potent1P2X4coop);

 cf(10);chainPrestimDoseResponse(xp0,potent1P2X4coop);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potent1P2X4coop);

cf(15);plotNaiveResponse(pulse1IVM,potent1P2X4coop);

cf(16);plotNaiveResponse(pulse3IVM,potent1P2X4coop);

cf(17);plotNaiveResponse(pulse10IVM,potent1P2X4coop);

cf(18);plotNaiveResponse(prol3IVM,potent1P2X4coop);

cf(19);plotNaiveResponse(prol2noIVM,potent1P2X4coop);

 cf(20);chainPrestimDoseResponse(x0,potent1P2X4coop);


% cf(21);prestimDoseResponses(potent1P2X4coop);

 

save(['twalk_potent1P2X4coop_kinetics' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


