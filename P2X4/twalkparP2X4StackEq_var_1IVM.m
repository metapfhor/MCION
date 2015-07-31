global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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
 
fparam('k7')=1;
fparam('k8')=1;
fparam('k9')=1;
fparam('k10')=1;
fparam('k11')=1;
fparam('k12')=1;
% 
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
% 
% 
% 

fparam('d1')=1;
fparam('d2')=1;
fparam('d3')=1;
fparam('d4')=1;
fparam('d5')=1;
fparam('d6')=1;
fparam('d7')=1;
fparam('d8')=1;

fparam('L11')=1;
fparam('L12')=1;
fparam('L13')=1;
fparam('L14')=1;

fparam('L21')=1;
fparam('L22')=1;
fparam('L23')=1;
fparam('L24')=1;
% 
fparam('L31')=1;
fparam('L32')=1;
fparam('L33')=1;
fparam('L34')=1;

fparam('L41')=1;
fparam('L42')=1;
fparam('L43')=1;
fparam('L44')=1;
% 
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
fparam('H1')=1;
fparam('H11')=1;
fparam('H12')=1;
fparam('H13')=1;
fparam('kd1')=1;
fparam('kd2')=1;
fparam('kd3')=1;
fparam('kd4')=1;
fparam('ks1')=1;
fparam('ks2')=1;
fparam('ks3')=1;
fparam('ks4')=1;
fparam('H3')=1;
fparam('H4')=1;
% 
% fparam('V')=0;
fparam('epsilon')=1;
fparam('delta')=1;
fparam('mu')=1;
% 
% fparam('n1')=1;
% fparam('n2')=1;
% fparam('n3')=1;

fparam('A')=0;
fparam('J')=0;

vals=fparam.values;
Npar=sum([vals{:}]);

pMax('d1')=1;
pMax('d3')=1;
pMax('d5')=1;
pMax('d7')=1;

pMax('H4')=0.01;

pMax('H11')=1;
pMax('H12')=10;
pMax('H13')=10;
pMax('H14')=100;

pMax('L11')=0.5;
pMax('L12')=0.5;
pMax('L13')=0.5;
pMax('L14')=0.5;

pMin('L11')=1e-5;
pMin('L12')=1e-5;
pMin('L13')=1e-5;
pMin('L14')=1e-5;

pMax('L21')=0.1;


pMin('L21')=1e-4;
pMin('L22')=1e-4;
pMin('L23')=1e-4;
pMin('L24')=1e-4;


pMax('L31')=1;
pMax('L32')=0.5;
pMax('L33')=0.5;
pMax('L34')=0.5;

pMax('L51')=0.1;
pMax('L52')=0.1;
pMax('L53')=0.001;
pMax('L54')=0.001;




pMax('L1')=50;
pMax('L4')=10;
pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=1e-5;
pMin('epsilon')=1e-6;
pMax('delta')=3e-6;
pMin('delta')=1e-7;
pMin('v1')=0.09;
pMax('v2')=0.07;
pMin('k3')=1;

pMax('g2')=7e-7;

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

[err1] = dataVarError(pulse0IVM,P2X4stacksub);
[err2] = dataVarError(pulse1IVM,P2X4StackEq);
[err3] = dataVarError(pulse3IVM,P2X4StackEq);
[err4] = dataVarError(pulse10IVM,P2X4StackEq);
[err5] = dataVarError(prol3IVM,P2X4StackEq);
[err6] = dataVarError(prol2noIVM,P2X4stacksub);

err7 = normPrestimDoseError(P2X4StackEq);

err8 = normIVMRecoveryError(P2X4StackEq);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4StackEq);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err4}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H11= [9.57209e-03, 1.95757e-03], H12= [6.35247e+00, 7.45452e+00], H13= [3.34453e-01, 5.08788e-01], H14= [1.94548e+00, 1.68325e+00], H21= [1.04848e-01, 8.22891e-02], H22= [4.79031e-02, 2.87099e-01], H23= [9.12775e-02, 1.17358e-01], H24= [8.70027e-02, 9.56273e-02], H3= [3.90190e-02, 3.56424e-03], H4= [2.31822e-04, 5.55521e-03], L11= [2.22925e-01, 2.41837e-01], L12= [1.36662e+00, 2.65708e-01], L13= [6.71488e+00, 9.65282e+00], L14= [9.95297e-01, 5.37454e-01], L21= [2.70649e-02, 2.80049e-02], L22= [2.46157e+00, 2.51589e+00], L23= [1.84859e+00, 1.86705e+00], L24= [7.79469e-01, 1.03173e-01], L31= [7.05981e-01, 7.71626e-01], L32= [2.41414e+00, 1.07161e+00], L33= [9.30257e+00, 9.23290e+00], L34= [3.19493e+00, 4.65375e+00], L41= [3.31057e+00, 1.08423e+00], L42= [5.24506e-03, 4.98471e-03], L43= [8.50953e-03, 5.61238e-03], L44= [8.37864e+00, 4.80808e+00], L51= [8.12522e-03, 8.89573e-03], L52= [1.51596e-02, 2.22509e-02], L53= [9.81980e-04, 1.47191e-05], L54= [1.29427e-05, 1.22965e-05], L61= [4.04485e+01, 3.14375e+01], L62= [2.66295e+00, 1.20715e+00], L63= [1.01342e+00, 4.07008e+00], L64= [1.37610e-04, 1.45654e-04], d1= [1.64986e+01, 2.26307e+01], d2= [1.18742e+07, 2.09207e+07], d3= [3.35086e+03, 8.25811e+03], d4= [1.11108e+06, 1.55396e+06], d5= [2.14423e+03, 3.52962e+03], d6= [9.30886e+03, 6.04930e+03], d7= [1.37912e+00, 9.99999e+03], d8= [3.18224e+05, 3.14473e+05], delta= [2.64734e-07, 1.90894e-07], epsilon= [6.29747e-06, 4.66915e-06], g1= [2.27942e-08, 2.07747e-08], g2= [5.74579e-08, 8.15260e-08], k1= [2.52431e-02, 4.42122e-02], k10= [9.94819e+06, 1.31586e+07], k11= [1.05763e-02, 6.45346e-02], k12= [3.77791e+07, 6.40590e+06], k13= [6.03325e-03, 6.39713e-03], k14= [2.44733e+07, 9.31176e+06], k15= [1.25045e-05, 2.01614e-05], k16= [1.27289e+07, 1.47114e+07], k17= [4.62896e-03, 3.28021e-03], k18= [3.95443e+08, 1.40187e+08], k19= [7.31552e-04, 7.24158e-04], k2= [2.78965e+06, 1.09283e+06], k20= [3.09528e+07, 2.63195e+07], k21= [2.12591e-06, 8.26522e-07], k22= [1.40795e+07, 1.66121e+07], k23= [4.48322e-06, 6.77114e-06], k24= [3.79588e+09, 2.29459e+09], k3= [4.30093e+00, 4.95092e+00], k4= [5.60802e+06, 5.19666e+06], k5= [3.46293e+00, 4.83747e+00], k6= [1.22089e+04, 1.16538e+05], k7= [1.18403e-02, 1.27373e-02], k8= [2.95015e+06, 3.95972e+06], k9= [2.22945e+00, 2.34978e+00], mu= [8.20470e-06, 8.73412e-06]');
% [x0,xp0]=twalkStringParse('H11= [8.17209e-04, 3.94232e-04], H12= [5.75884e+00, 4.23165e-01], H13= [3.16814e+00, 3.31149e+00], H14= [3.12668e+01, 8.26934e+01], H21= [5.44392e-02, 6.08388e-02], H22= [7.46600e-01, 7.89884e-01], H23= [2.52554e-02, 2.33800e-02], H24= [6.83799e-02, 8.86911e-02], H3= [3.22865e-06, 3.42103e-06], H4= [4.26548e-03, 4.44384e-03], L11= [7.15660e+00, 6.82120e+00], L12= [1.29545e-02, 4.38145e-03], L13= [7.95554e-02, 3.04377e-02], L14= [4.93406e+00, 6.28243e+00], L21= [4.55028e-02, 5.29116e-04], L22= [5.19299e-01, 4.31815e-01], L23= [4.46324e-01, 8.15695e-02], L24= [5.58332e-02, 1.96897e-01], L31= [9.25600e-01, 9.26000e-01], L32= [5.99269e+00, 6.25230e+00], L33= [1.97359e+00, 9.64413e-01], L34= [2.72656e-01, 3.24739e-01], L41= [5.55745e-02, 2.00978e-01], L42= [3.26036e+00, 2.79562e+00], L43= [1.61980e-01, 1.72852e-01], L44= [2.03105e-01, 1.57242e-01], L51= [9.68501e-02, 7.13792e-02], L52= [3.98585e-02, 3.46074e-02], L53= [7.26328e-04, 1.40436e-04], L54= [4.52599e-04, 8.52105e-04], L61= [2.45383e+01, 2.40629e+01], L62= [6.61357e-02, 8.82324e-02], L63= [2.44691e-02, 3.69381e-01], L64= [4.59225e-04, 3.95535e-04], d1= [2.18893e+01, 2.26737e+00], d2= [2.32757e+07, 1.78230e+07], d3= [4.56672e+00, 8.42321e+00], d4= [6.00898e+05, 4.14707e+05], d5= [9.99647e+03, 3.38263e+01], d6= [3.35940e+08, 2.37854e+07], d7= [4.77172e-01, 2.37521e-01], d8= [2.09532e+06, 1.72298e+06], delta= [1.19018e-06, 5.02973e-07], epsilon= [2.84785e-06, 1.78214e-06], g1= [3.03560e-08, 3.97335e-08], g2= [5.85987e-08, 1.28057e-07], k1= [2.07859e+00, 2.23793e+00], k10= [7.63266e+06, 6.23113e+06], k11= [2.30880e+01, 3.23117e+01], k12= [4.42309e+05, 1.49071e+06], k13= [2.69961e-02, 2.76575e-02], k14= [4.13079e+08, 3.27986e+08], k15= [1.19431e-03, 7.29122e-04], k16= [8.42793e+06, 6.25289e+06], k17= [2.93517e+00, 5.26388e+00], k18= [7.97671e+07, 3.72518e+07], k19= [1.02039e-02, 6.99436e-03], k2= [1.40528e+08, 1.06446e+08], k20= [9.41003e+10, 5.64985e+10], k21= [1.25374e-05, 1.08595e-05], k22= [1.39502e+07, 1.14313e+07], k23= [2.93073e-09, 5.11124e-08], k24= [2.99811e+08, 2.56189e+08], k3= [3.10641e+00, 3.76526e+00], k4= [1.54163e+06, 1.33989e+06], k5= [6.52649e+01, 3.63481e+01], k6= [2.25045e+05, 4.97954e+04], k7= [3.43222e-02, 5.54508e-02], k8= [3.74860e+08, 2.15668e+08], k9= [2.39276e-02, 3.21477e-01], mu= [4.75386e-06, 5.75340e-06]');

Niter=500;
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

% cf(4);plotNaiveResponse(pulse0IVM,P2X4StackEq);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4StackEq);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4StackEq);
% % 
cf(7);plotNaiveResponse(pulse10IVM,P2X4StackEq);
% % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4StackEq);
% 
% cf(9);plotNaiveResponse(prol2noIVM,P2X4StackEq);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4StackEq);

% cf(10);prestimDoseResponses(P2X4StackEq);
% 
% cf(11);plotIVMAction(P2X4StackEq);
    
continueChain(x0);
 
% % 
% cf(14);plotNaiveResponse(pulse0IVM,P2X4StackEq);
% % 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4StackEq);
% % % 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4StackEq);
% % 
cf(17);plotNaiveResponse(pulse10IVM,P2X4StackEq);
% % 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4StackEq);
% 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4StackEq);
% 
% cf(20);prestimDoseResponses(P2X4StackEq);
% % 
% cf(21);plotIVMAction(P2X4StackEq);

 

save(['twalk_P2X4StackEq_var_all_IVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


