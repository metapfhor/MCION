global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% % fparam('a1')=1;
% fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

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


fparam('w1')=1;
fparam('w2')=1;
fparam('w3')=1;

fparam('s1')=1;
fparam('s2')=1;
fparam('s3')=1;

% fparam('kd')=1;
% fparam('ku')=1;


% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;

% fparam('ku0')=1;
% fparam('kd0')=1;
fparam('ku1')=1;
fparam('kd1')=1;
fparam('ku2')=1;
fparam('kd2')=1;
fparam('ku3')=1;
fparam('kd3')=1;
% fparam('alpha')=1;
% 
% fparam('a1')=1;
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

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4poolindep);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4poolindep);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4poolindep);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4poolindep);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4poolindep);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4poolindep);

err7 = normPrestimDoseError(potentP2X4poolindep);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4poolindep);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) poolIndepDilation(x), 'logLikelihood','normPrestimDoseErrorpotentP2X4poolindep','bounds',bounds);

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
% [x0,xp0]=twalkStringParse('L1= [1.02051e+01, 8.41376e+00], L2= [7.51090e-02, 7.47341e-02], L3= [3.89711e-03, 3.35266e-03], L4= [3.65513e+00, 2.61238e+00], L5= [3.05368e-01, 3.13168e-01], L6= [4.00962e-01, 4.18086e-01], kd1= [2.12001e+05, 2.81399e+04], kd2= [7.23606e+03, 6.59842e+03], kd3= [9.41314e+05, 8.79681e+05], ku1= [1.07804e-03, 4.64956e-02], ku2= [1.57487e-03, 2.46767e-03], ku3= [3.13665e-04, 3.00526e-04], r1= [3.77436e+01, 1.28146e+01], r2= [7.87913e+01, 8.07623e+01], r3= [2.11615e+01, 1.91861e+01], rho1= [1.51109e+00, 1.88010e+00], rho2= [1.21475e-03, 1.22142e-03], rho3= [1.58742e+01, 9.23939e+00], s1= [1.67558e-03, 1.48670e-03], s2= [1.40982e-01, 1.21376e-01], s3= [1.42526e+01, 1.71413e+01], v1= [6.69914e-01, 6.10764e-01], v2= [1.99921e-02, 2.19840e-02], v3= [7.78460e-05, 1.07023e-04], w1= [2.44182e-01, 5.71319e-01], w2= [2.14018e+00, 4.15005e-01], w3= [1.98469e+02, 1.45425e+01]');

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
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4poolindep);
% 
% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4poolindep);
% 
% cf(6);plotNaiveResponse(pulse3IVM,potentP2X4poolindep);
% 
% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4poolindep);
% 
% cf(8);plotNaiveResponse(prol3IVM,potentP2X4poolindep);
% 
% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4poolindep);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4poolindep);


    
continueChain(x0);
%  
% 
% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4poolindep);
% 
% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4poolindep);
% 
% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4poolindep);
% 
% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4poolindep);
% 
% cf(18);plotNaiveResponse(prol3IVM,potentP2X4poolindep);
% 
% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4poolindep);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4poolindep);


% cf(21);prestimDoseResponses(potentP2X4poolindep);

 

save(['twalk_potentP2X4poolindep_dose' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


