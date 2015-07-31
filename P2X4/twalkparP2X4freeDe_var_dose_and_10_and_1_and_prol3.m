global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L5','L6','kd','ks','H3','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','beta','gamma','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% % fparam('a1')=1;
fparam('g2')=1;
% fparam('E1')=0;
% fparam('E2')=0;
% % 
fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
%  
fparam('k7')=1;
fparam('k8')=1;
fparam('k9')=1;
fparam('k10')=1;
fparam('k11')=1;
fparam('k12')=1;

fparam('k13')=1;
fparam('k14')=1;
fparam('k15')=1;
fparam('k16')=1;
fparam('k17')=1;
fparam('k18')=1;
%  
fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;



% 
fparam('L11')=1;
fparam('L12')=1;
fparam('L13')=1;
fparam('L14')=1;

fparam('L21')=1;
fparam('L22')=1;
fparam('L23')=1;
fparam('L24')=1;

fparam('L31')=1;
fparam('L32')=1;
fparam('L33')=1;
fparam('L34')=1;

fparam('L41')=1;
fparam('L42')=1;
fparam('L43')=1;
fparam('L44')=1;

fparam('L51')=1;
fparam('L52')=1;
fparam('L53')=1;
fparam('L54')=1;

fparam('L61')=1;
fparam('L62')=1;
fparam('L63')=1;
fparam('L64')=1;

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
% fparam('L6')=1;
% 
% fparam('H1')=1;
fparam('kd')=1;
fparam('ks')=1;
fparam('alpha')=1;
fparam('beta')=1;
fparam('gamma')=1;
fparam('H3')=1;
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

pMax('L11')=10;
pMax('L12')=10;
pMax('L13')=10;
pMax('L14')=10;

pMax('L31')=10;
pMax('L32')=10;
pMax('L33')=10;
pMax('L34')=10;

pMax('L51')=10;
pMax('L52')=10;
pMax('L53')=10;
pMax('L54')=10;




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
pMin('k3')=1;


% pMax('k11')=100;
% pMax('k2')=10^10;
% pMax('k4')=10^10;
% pMax('k6')=10^10;
% pMax('k8')=10^10;
% pMax('k10')=10^10;
% pMax('k12')=10^10;
% pMax('k14')=10^10;
% pMax('k16')=10^10;
% pMax('k18')=10^10;
% pMax('k20')=10^10;
% pMax('k22')=10^10;
% pMax('k24')=10^10;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = dataVarError(pulse0IVM,P2X4freeDe);
[err2] = dataVarError(pulse1IVM,P2X4freeDe);
[err3] = dataVarError(pulse3IVM,P2X4freeDe);
[err4] = dataVarError(pulse10IVM,P2X4freeDe);
[err5] = dataVarError(prol3IVM,P2X4freeDe);
[err6] = dataVarError(prol2noIVM,P2X4freeDe);

err7 = normPrestimDoseError(P2X4freeDe);

err8 = normIVMRecoveryError(P2X4freeDe);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4freeDe);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) 1, 'logLikelihood',{{@(x) 10*err1(x),err5,}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H1= [9.54512e-04, 7.07920e-04], H2= [8.98996e-02, 9.74898e-02], H3= [6.64210e-03, 1.69449e-04], H4= [2.58754e-05, 5.88248e-04], L11= [3.29211e-07, 8.85076e-08], L12= [6.60125e-02, 7.94132e-02], L13= [9.31024e-02, 3.68647e-01], L14= [1.57787e+00, 3.87840e+00], L21= [1.18137e-02, 1.20231e-02], L22= [2.09902e-01, 1.18256e+00], L23= [3.21593e-01, 3.09705e-01], L24= [7.08838e-01, 1.76331e+00], L31= [6.20130e-03, 4.47636e-03], L32= [2.83042e+00, 1.76950e+00], L33= [1.15750e-03, 2.47712e-03], L34= [5.50643e+00, 5.59459e+00], L41= [1.12254e-05, 4.59066e-06], L42= [2.70040e-01, 8.62914e-02], L43= [1.32330e-03, 5.24423e-02], L44= [7.53071e-02, 4.98668e-02], L51= [8.33879e-05, 5.96731e-05], L52= [9.32712e+00, 9.84917e+00], L53= [1.61895e-01, 1.54371e-01], L54= [2.24688e+00, 1.92294e+00], L61= [2.23843e+00, 2.05089e+00], L62= [1.13337e-01, 1.10129e-01], L63= [1.36790e+00, 1.13902e+00], L64= [4.13520e-01, 4.35836e-01], g1= [2.78282e-08, 3.00760e-08], g2= [1.11403e-07, 1.20628e-07], k1= [2.90324e+00, 1.25801e+01], k10= [1.74575e+07, 3.92945e+07], k11= [6.78769e+00, 8.95774e+00], k12= [1.48198e+09, 1.81067e+09], k13= [2.53701e+01, 3.60022e+01], k14= [2.56769e+06, 3.50152e+06], k15= [3.14859e-01, 2.68699e-01], k16= [2.50100e+07, 3.51245e+07], k17= [4.11033e+04, 2.62260e+04], k18= [6.89671e+03, 6.82684e+03], k19= [9.36970e-03, 1.92425e-02], k2= [1.17408e+07, 2.07939e+07], k20= [4.24335e+05, 7.11815e+05], k21= [1.46117e-02, 1.25571e-02], k22= [1.08000e+10, 2.09462e+09], k23= [2.30550e+04, 1.80994e+04], k24= [2.04041e+04, 3.50508e+04], k3= [7.39140e+00, 8.02075e+00], k4= [2.74497e+06, 3.96430e+06], k5= [1.03863e+02, 8.09169e+01], k6= [1.77707e+08, 6.76954e+07], k7= [5.31761e-03, 1.80362e-03], k8= [7.75233e+07, 4.08304e+07], k9= [1.58763e+00, 1.18449e+00]');


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

cf(4);plotNaiveResponse(pulse0IVM,P2X4freeDe);
% 
cf(51);plotNaiveResponse(pulse1IVM,P2X4freeDe);
% % 
cf(6);plotNaiveResponse(pulse3IVM,P2X4freeDe);
% 
cf(7);plotNaiveResponse(pulse10IVM,P2X4freeDe);
% 
cf(8);plotNaiveResponse(prol3IVM,P2X4freeDe);

cf(9);plotNaiveResponse(prol2noIVM,P2X4freeDe);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4freeDe);

cf(10);prestimDoseResponses(P2X4freeDe);

cf(11);plotIVMAction(P2X4freeDe);

continueChain(x0);

% 
cf(14);plotNaiveResponse(pulse0IVM,P2X4freeDe);
% 
cf(15);plotNaiveResponse(pulse1IVM,P2X4freeDe);
% % 
cf(16);plotNaiveResponse(pulse3IVM,P2X4freeDe);
% % 
cf(17);plotNaiveResponse(pulse10IVM,P2X4freeDe);
% % 
cf(18);plotNaiveResponse(prol3IVM,P2X4freeDe);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4freeDe);

cf(20);prestimDoseResponses(P2X4freeDe);

cf(21);plotIVMAction(P2X4freeDe);


save(['twalk_P2X4freeDe_preStim_and_3_and_1uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


