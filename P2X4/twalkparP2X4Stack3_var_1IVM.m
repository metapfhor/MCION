global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% % fparam('a1')=1;
fparam('g2')=1;
% fparam('E1')=0;
% fparam('E2')=0;
% % 
% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;
 
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

% fparam('d1')=1;
% fparam('d2')=1;
% fparam('d3')=1;
% fparam('d4')=1;
% fparam('d5')=1;
% fparam('d6')=1;

fparam('d7')=1;
fparam('d8')=1;
fparam('d9')=1;
fparam('d10')=1;
fparam('d11')=1;
fparam('d12')=1;

fparam('d13')=1;
fparam('d14')=1;
fparam('d15')=1;
fparam('d16')=1;
fparam('d17')=1;
fparam('d18')=1;

fparam('d19')=1;
fparam('d21')=1;
fparam('d22')=1;
fparam('d23')=1;
fparam('d24')=1;

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

% fparam('H11')=1;
fparam('H12')=1;
fparam('H13')=1;
fparam('H14')=1;
% fparam('kd1')=1;
fparam('kd2')=1;
fparam('kd3')=1;
fparam('kd4')=1;
% fparam('ks1')=1;
fparam('ks2')=1;
fparam('ks3')=1;
fparam('ks4')=1;
% fparam('H3')=1;
% fparam('H4')=1;
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
pMax('L22')=1;
pMax('L23')=3;
pMax('L24')=10;

pMin('L21')=1e-4;
pMin('L22')=1e-4;
pMin('L23')=1e-4;
pMin('L24')=1e-4;

pMin('d7')=0.1;
pMin('d9')=0.1;
pMin('d11')=0.1;

pMax('d7')=10;
pMax('d9')=10;
pMax('d11')=10;

pMin('d13')=0.1;
pMin('d15')=0.1;
pMin('d17')=0.1;

pMax('d13')=10;
pMax('d15')=10;
pMax('d17')=10;

pMax('d8')=10^7.5;
pMax('d10')=10^7.5;
pMax('d12')=10^7.5;

pMax('d14')=10^7.5;
pMax('d16')=10^7.5;
pMax('d18')=10^7.5;


pMax('L31')=1;
pMax('L32')=0.5;
pMax('L33')=0.5;
pMax('L34')=0.5;

pMin('L31')=1e-5;
pMin('L32')=1e-5;
pMin('L33')=1e-5;
pMin('L34')=1e-5;

pMax('L51')=0.1;
pMax('L52')=0.1;
pMax('L53')=0.001;
pMax('L54')=0.001;

pMin('L51')=1e-5;
pMin('L52')=1e-5;
pMin('L53')=1e-5;
pMin('L54')=1e-5;


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

[err1] = dataVarError(pulse0IVM,P2X4Stack3);
[err2] = dataVarError(pulse1IVM,P2X4Stack3);
[err3] = dataVarError(pulse3IVM,P2X4Stack3);
[err4] = dataVarError(pulse10IVM,P2X4Stack3);
[err5] = dataVarError(prol3IVM,P2X4Stack3);
[err6] = dataVarError(prol2noIVM,P2X4stacksub);

err7 = normPrestimDoseError(P2X4Stack3);

err8 = normIVMRecoveryError(P2X4Stack3);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4Stack3);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err2,err3,err4,err5}},'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end

while p.logPrior(xp0)==0 || sum(xp0<0)~=0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
 
% % [x0,xp0]=twalkStringParse('H11= [9.57209e-03, 1.95757e-03], H12= [6.35247e+00, 7.45452e+00], H13= [3.34453e-01, 5.08788e-01], H14= [1.94548e+00, 1.68325e+00], H21= [1.04848e-01, 8.22891e-02], H22= [4.79031e-02, 2.87099e-01], H23= [9.12775e-02, 1.17358e-01], H24= [8.70027e-02, 9.56273e-02], H3= [3.90190e-02, 3.56424e-03], H4= [2.31822e-04, 5.55521e-03], L11= [2.22925e-01, 2.41837e-01], L12= [1.36662e+00, 2.65708e-01], L13= [6.71488e+00, 9.65282e+00], L14= [9.95297e-01, 5.37454e-01], L21= [2.70649e-02, 2.80049e-02], L22= [2.46157e+00, 2.51589e+00], L23= [1.84859e+00, 1.86705e+00], L24= [7.79469e-01, 1.03173e-01], L31= [7.05981e-01, 7.71626e-01], L32= [2.41414e+00, 1.07161e+00], L33= [9.30257e+00, 9.23290e+00], L34= [3.19493e+00, 4.65375e+00], L41= [3.31057e+00, 1.08423e+00], L42= [5.24506e-03, 4.98471e-03], L43= [8.50953e-03, 5.61238e-03], L44= [8.37864e+00, 4.80808e+00], L51= [8.12522e-03, 8.89573e-03], L52= [1.51596e-02, 2.22509e-02], L53= [9.81980e-04, 1.47191e-05], L54= [1.29427e-05, 1.22965e-05], L61= [4.04485e+01, 3.14375e+01], L62= [2.66295e+00, 1.20715e+00], L63= [1.01342e+00, 4.07008e+00], L64= [1.37610e-04, 1.45654e-04], d1= [1.64986e+01, 2.26307e+01], d2= [1.18742e+07, 2.09207e+07], d3= [3.35086e+03, 8.25811e+03], d4= [1.11108e+06, 1.55396e+06], d5= [2.14423e+03, 3.52962e+03], d6= [9.30886e+03, 6.04930e+03], d7= [1.37912e+00, 9.99999e+03], d8= [3.18224e+05, 3.14473e+05], delta= [2.64734e-07, 1.90894e-07], epsilon= [6.29747e-06, 4.66915e-06], g1= [2.27942e-08, 2.07747e-08], g2= [5.74579e-08, 8.15260e-08], k1= [2.52431e-02, 4.42122e-02], k10= [9.94819e+06, 1.31586e+07], k11= [1.05763e-02, 6.45346e-02], k12= [3.77791e+07, 6.40590e+06], k13= [6.03325e-03, 6.39713e-03], k14= [2.44733e+07, 9.31176e+06], k15= [1.25045e-05, 2.01614e-05], k16= [1.27289e+07, 1.47114e+07], k17= [4.62896e-03, 3.28021e-03], k18= [3.95443e+08, 1.40187e+08], k19= [7.31552e-04, 7.24158e-04], k2= [2.78965e+06, 1.09283e+06], k20= [3.09528e+07, 2.63195e+07], k21= [2.12591e-06, 8.26522e-07], k22= [1.40795e+07, 1.66121e+07], k23= [4.48322e-06, 6.77114e-06], k24= [3.79588e+09, 2.29459e+09], k3= [4.30093e+00, 4.95092e+00], k4= [5.60802e+06, 5.19666e+06], k5= [3.46293e+00, 4.83747e+00], k6= [1.22089e+04, 1.16538e+05], k7= [1.18403e-02, 1.27373e-02], k8= [2.95015e+06, 3.95972e+06], k9= [2.22945e+00, 2.34978e+00], mu= [8.20470e-06, 8.73412e-06]');
% [x0,xp0]=twalkStringParse(' H12= [3.48421e-01, 3.01705e-01], H13= [5.02809e-01, 6.44525e-01], L11= [5.84493e-03, 3.22820e-03], L12= [3.35486e-01, 3.15396e-01], L13= [1.99464e-01, 2.20363e-01], L14= [4.30909e-03, 4.34361e-03], L21= [5.70715e-03, 8.80841e-03], L22= [1.27197e-01, 9.86737e-02], L23= [1.04205e-01, 1.30485e-01], L24= [1.71963e-02, 6.29577e-02], L31= [1.24130e-05, 9.99990e-01], L32= [2.94216e-05, 2.26387e-05], L33= [3.79205e-04, 8.86180e-05], L34= [2.76291e-05, 7.43440e-05], L41= [2.73685e-02, 5.51001e-02], L42= [5.64211e-02, 4.72210e-02], L43= [1.15100e+00, 1.01131e+00], L44= [2.02542e-02, 3.26779e-01], d10= [8.07636e+06, 7.33588e+06], d11= [8.14124e-01, 1.63099e-01], d12= [1.49072e+07, 1.56894e+07], d13= [5.46115e+00, 4.76708e+00], d14= [4.84430e+06, 6.52900e+06], d15= [4.98780e-01, 3.76335e-01], d16= [1.66856e+07, 1.71934e+07], d17= [1.66871e+00, 1.42946e+00], d18= [3.16228e+07, 2.73897e+07], d7= [4.88067e+00, 5.52076e+00], d8= [2.70733e+07, 1.83413e+07], d9= [9.72991e-01, 1.10945e+00], delta= [8.40252e-07, 7.55058e-07], epsilon= [2.31621e-06, 1.62484e-06], g2= [2.27091e-07, 1.01628e-07], k10= [7.50125e+06, 6.63038e+06], k11= [2.33417e+01, 3.59029e+01], k12= [1.77325e+07, 1.42040e+07], k13= [2.19146e-04, 1.36471e-04], k14= [2.81139e+05, 5.92183e+05], k15= [1.66554e-01, 7.37336e-03], k16= [1.65882e+06, 1.11358e+06], k17= [3.14239e+00, 3.32808e+00], k18= [2.44740e+06, 2.75850e+06], k7= [1.74293e-02, 1.24015e-02], k8= [7.92918e+05, 4.70612e+05], k9= [2.10224e+00, 2.18044e+00], kd2= [1.15557e+00, 5.13572e-01], kd3= [4.24776e-01, 3.92794e-01], ks2= [9.27702e-02, 1.48373e-01], ks3= [1.15538e-01, 3.36365e-02]');

Niter=6000;
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

% cf(4);plotNaiveResponse(pulse0IVM,P2X4Stack3);
% % 
cf(51);plotNaiveResponse(pulse1IVM,P2X4Stack3);
% % 
cf(6);plotNaiveResponse(pulse3IVM,P2X4Stack3);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4Stack3);
% % 
cf(8);plotNaiveResponse(prol3IVM,P2X4Stack3);
% 
% cf(9);plotNaiveResponse(prol2noIVM,P2X4Stack3);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4Stack3);

% cf(10);prestimDoseResponses(P2X4Stack3);
% 
% cf(11);plotIVMAction(P2X4Stack3);
    
continueChain(x0);
 
% % 
% cf(14);plotNaiveResponse(pulse0IVM,P2X4Stack3);
% % 
cf(15);plotNaiveResponse(pulse1IVM,P2X4Stack3);

% cf(55);plotPulseShort(pulse1IVM,P2X4Stack3);


% % % 
cf(16);plotNaiveResponse(pulse3IVM,P2X4Stack3);

% cf(56);plotPulseShort(pulse3IVM,P2X4Stack3);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4Stack3);
% 
cf(57);plotPulseShort(pulse10IVM,P2X4Stack3);
% % 
cf(18);plotNaiveResponse(prol3IVM,P2X4Stack3);
% 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4Stack3);
% 
% cf(20);prestimDoseResponses(P2X4Stack3);
% % 
% cf(21);plotIVMAction(P2X4Stack3);

 

save(['twalk_P2X4Stack3_var_1&3_IVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


