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

fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;

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

fparam('kd1')=1;
fparam('ku1')=1;
fparam('kd2')=1;
fparam('ku2')=1;
fparam('kd3')=1;
fparam('ku3')=1;


% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;
fparam('L7')=1;
fparam('L8')=1;
fparam('L9')=1;
fparam('L10')=1;

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
% fparam('a1')=1;
% fparam('a2')=1;
% fparam('a3')=1;

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
    

% dilation = modelDilation(potentP2X4poolindep);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) poolIndepDilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6}},'bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
   xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
% [x0,xp0]=twalkStringParse('L1= [6.11125e+00, 6.49578e+00], L10= [1.69688e-01, 4.96257e-01], L2= [1.03263e-01, 1.00560e-01], L3= [2.57434e-02, 3.25191e-02], L4= [2.17492e+00, 2.14661e+00], L5= [3.61121e+00, 3.35982e+00], L6= [1.93562e+01, 1.77561e+01], L7= [2.62256e-02, 2.65434e-02], L8= [1.13311e+00, 1.55342e+00], L9= [2.72629e-01, 2.85903e-01], g2= [9.48513e-08, 9.36336e-08], kd1= [1.10140e+05, 3.38514e+05], kd2= [8.54728e+00, 6.81153e+00], kd3= [2.70724e+06, 3.34573e+06], ku1= [1.72867e-01, 4.74937e-01], ku2= [2.71262e-02, 2.88255e-02], ku3= [5.51001e-01, 6.72930e-01], r1= [8.27857e-05, 8.13083e-05], r2= [2.38531e+00, 2.79800e+00], r3= [1.90523e+00, 1.60150e+00], rho1= [2.73459e-01, 1.35020e-01], rho2= [2.38842e-01, 1.82743e-01], rho3= [3.92547e+01, 5.99676e+01], s1= [9.04304e-05, 4.90056e-05], s2= [1.02049e-03, 9.57991e-04], s3= [1.21703e+02, 1.08325e+02], v1= [5.83979e-01, 9.55890e-01], v2= [6.94667e-02, 6.92845e-02], v3= [4.05251e-03, 4.90271e-03], w1= [1.42451e+02, 2.84435e+02], w2= [1.95249e+01, 1.96385e+01], w3= [5.70437e+01, 6.42343e+01]');

Niter=500;
0;
hold off



disp(['Initial Parameters:', tchainString(x0,xp0)])

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4poolindep);

cf(5);plotNaiveResponse(pulse1IVM,potentP2X4poolindep);

cf(6);plotNaiveResponse(pulse3IVM,potentP2X4poolindep);
% 
cf(7);plotNaiveResponse(pulse10IVM,potentP2X4poolindep);
% 
cf(8);plotNaiveResponse(prol3IVM,potentP2X4poolindep);
% 
% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4poolindep);

%  cf(10);chainPrestimDoseResponse(xp0,potentP2X4poolindep);


    
continueChain(x0);
%  
% 
% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4poolindep);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4poolindep);

cf(16);plotNaiveResponse(pulse3IVM,potentP2X4poolindep);

cf(17);plotNaiveResponse(pulse10IVM,potentP2X4poolindep);
% 
cf(18);plotNaiveResponse(prol3IVM,potentP2X4poolindep);
% 
% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4poolindep);

%  cf(20);chainPrestimDoseResponse(x0,potentP2X4poolindep);


% cf(21);prestimDoseResponses(potentP2X4poolindep);

 

save(['twalk_potentP2X4poolindep_kinetics_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


