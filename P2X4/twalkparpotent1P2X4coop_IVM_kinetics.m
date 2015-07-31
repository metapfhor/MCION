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
   xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
% [x0,xp0]=twalkStringParse('H1= [1.60524e-07, 5.07638e-07], H2= [2.15498e-01, 2.40986e-01], H3= [9.08924e-04, 3.22010e-03], H4= [5.57129e-03, 8.38626e-03], L1= [2.21451e+01, 4.72430e+01], L2= [1.69674e+00, 2.16004e+00], L3= [1.90576e-02, 2.94463e-02], L4= [3.79264e-02, 3.53521e-02], L5= [1.48570e-01, 1.67661e-01], L6= [3.16082e+03, 6.95297e+03], g1= [3.06568e-08, 3.49865e-08], g2= [5.35420e-08, 6.13878e-08], k1= [1.29925e+01, 1.26603e+01], k2= [1.61602e+06, 1.65250e+06], k3= [2.99867e+01, 3.78665e+01], k4= [7.80257e+07, 9.60072e+07], k5= [1.63305e+01, 1.76571e+01], k6= [1.40363e+07, 1.40735e+07], kd= [1.30161e+06, 2.00218e+06], ku= [1.28003e-04, 1.18126e-04], r1= [4.42476e+02, 6.62188e+02], r2= [2.00099e+02, 2.64057e+02], r3= [3.40081e+02, 3.35945e+02], rho1= [9.10211e+00, 8.72944e+00], rho2= [1.28520e-03, 1.59646e-03], rho3= [4.28887e+00, 7.08510e+00], s1= [5.64420e-01, 7.46577e-01], s2= [2.39420e+00, 4.56160e+00], s3= [1.08714e-02, 1.30145e-02], v1= [2.11164e-01, 4.95796e-01], v2= [6.61094e-02, 5.54267e-02], v3= [1.19109e-02, 1.06532e-02], w1= [4.68085e-01, 6.37965e-01], w2= [2.14366e-02, 2.39616e-02], w3= [7.85716e-07, 8.50088e-07]');

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

