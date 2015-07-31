global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% % fparam('a1')=1;
% fparam('g2')=1;
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
% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;
% % 
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

% fparam('d9')=1;
% fparam('d10')=1;
% fparam('d11')=1;
% fparam('d12')=1;
% fparam('d13')=1;
% fparam('d14')=1;
% fparam('d15')=1;
% fparam('d16')=1;
% 
% fparam('d17')=1;
% fparam('d18')=1;
% fparam('d19')=1;
% fparam('d20')=1;
% fparam('d21')=1;
% fparam('d22')=1;
% fparam('d23')=1;
% fparam('d24')=1;
% 
% fparam('L11')=1;
% fparam('L12')=1;
% fparam('L13')=1;
% fparam('L14')=1;
% 
% fparam('L21')=1;
% fparam('L22')=1;
% fparam('L23')=1;
% fparam('L24')=1;
% % 
% fparam('L31')=1;
% fparam('L32')=1;
% fparam('L33')=1;
% fparam('L34')=1;
% 
% fparam('L41')=1;
% fparam('L42')=1;
% fparam('L43')=1;
% fparam('L44')=1;
% % 
% fparam('L51')=1;
% fparam('L52')=1;
% fparam('L53')=1;
% fparam('L54')=1;
% 
% fparam('L61')=1;
% fparam('L62')=1;
% fparam('L63')=1;
% fparam('L64')=1;

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

fparam('H11')=1;
% fparam('H12')=1;
% fparam('H13')=1;
% fparam('H14')=1;
% fparam('kd1')=1;
% fparam('kd2')=1;
% fparam('kd3')=1;
% fparam('kd4')=1;
fparam('ks1')=1;
% fparam('ks2')=1;
% fparam('ks3')=1;
% fparam('ks4')=1;
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

[err1] = dataVarError(pulse0IVM,P2X4Stack2sub);
[err2] = dataVarError(pulse1IVM,P2X4Stack2);
[err3] = dataVarError(pulse3IVM,P2X4Stack2);
[err4] = dataVarError(pulse10IVM,P2X4Stack2);
[err5] = dataVarError(prol3IVM,P2X4Stack2);
[err6] = dataVarError(prol2noIVM,P2X4Stack2sub);

err7 = normPrestimDoseError(P2X4Stack2);

err8 = normIVMRecoveryError(P2X4Stack2);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4Stack2);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err6}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H11= [9.57209e-03, 1.95757e-03], H12= [6.35247e+00, 7.45452e+00], H13= [3.34453e-01, 5.08788e-01], H14= [1.94548e+00, 1.68325e+00], H21= [1.04848e-01, 8.22891e-02], H22= [4.79031e-02, 2.87099e-01], H23= [9.12775e-02, 1.17358e-01], H24= [8.70027e-02, 9.56273e-02], H3= [3.90190e-02, 3.56424e-03], H4= [2.31822e-04, 5.55521e-03], L11= [2.22925e-01, 2.41837e-01], L12= [1.36662e+00, 2.65708e-01], L13= [6.71488e+00, 9.65282e+00], L14= [9.95297e-01, 5.37454e-01], L21= [2.70649e-02, 2.80049e-02], L22= [2.46157e+00, 2.51589e+00], L23= [1.84859e+00, 1.86705e+00], L24= [7.79469e-01, 1.03173e-01], L31= [7.05981e-01, 7.71626e-01], L32= [2.41414e+00, 1.07161e+00], L33= [9.30257e+00, 9.23290e+00], L34= [3.19493e+00, 4.65375e+00], L41= [3.31057e+00, 1.08423e+00], L42= [5.24506e-03, 4.98471e-03], L43= [8.50953e-03, 5.61238e-03], L44= [8.37864e+00, 4.80808e+00], L51= [8.12522e-03, 8.89573e-03], L52= [1.51596e-02, 2.22509e-02], L53= [9.81980e-04, 1.47191e-05], L54= [1.29427e-05, 1.22965e-05], L61= [4.04485e+01, 3.14375e+01], L62= [2.66295e+00, 1.20715e+00], L63= [1.01342e+00, 4.07008e+00], L64= [1.37610e-04, 1.45654e-04], d1= [1.64986e+01, 2.26307e+01], d2= [1.18742e+07, 2.09207e+07], d3= [3.35086e+03, 8.25811e+03], d4= [1.11108e+06, 1.55396e+06], d5= [2.14423e+03, 3.52962e+03], d6= [9.30886e+03, 6.04930e+03], d7= [1.37912e+00, 9.99999e+03], d8= [3.18224e+05, 3.14473e+05], delta= [2.64734e-07, 1.90894e-07], epsilon= [6.29747e-06, 4.66915e-06], g1= [2.27942e-08, 2.07747e-08], g2= [5.74579e-08, 8.15260e-08], k1= [2.52431e-02, 4.42122e-02], k10= [9.94819e+06, 1.31586e+07], k11= [1.05763e-02, 6.45346e-02], k12= [3.77791e+07, 6.40590e+06], k13= [6.03325e-03, 6.39713e-03], k14= [2.44733e+07, 9.31176e+06], k15= [1.25045e-05, 2.01614e-05], k16= [1.27289e+07, 1.47114e+07], k17= [4.62896e-03, 3.28021e-03], k18= [3.95443e+08, 1.40187e+08], k19= [7.31552e-04, 7.24158e-04], k2= [2.78965e+06, 1.09283e+06], k20= [3.09528e+07, 2.63195e+07], k21= [2.12591e-06, 8.26522e-07], k22= [1.40795e+07, 1.66121e+07], k23= [4.48322e-06, 6.77114e-06], k24= [3.79588e+09, 2.29459e+09], k3= [4.30093e+00, 4.95092e+00], k4= [5.60802e+06, 5.19666e+06], k5= [3.46293e+00, 4.83747e+00], k6= [1.22089e+04, 1.16538e+05], k7= [1.18403e-02, 1.27373e-02], k8= [2.95015e+06, 3.95972e+06], k9= [2.22945e+00, 2.34978e+00], mu= [8.20470e-06, 8.73412e-06]');
% [x0,xp0]=twalkStringParse('H11= [1.74649e-04, 2.02775e-03], H12= [2.51758e-03, 2.58457e-02], H13= [3.19169e+00, 2.09451e+00], H14= [5.64970e+01, 3.91448e+01], H3= [3.14997e-01, 1.71791e-01], H4= [5.07977e-03, 6.02408e-04], L11= [4.04244e-05, 4.44725e-05], L12= [2.63665e-02, 2.98860e-01], L13= [2.73642e-02, 3.11974e-01], L14= [4.61274e-02, 4.25046e-03], L21= [9.62162e-02, 2.10263e-02], L22= [1.53454e-04, 1.48641e-04], L23= [1.38640e-04, 1.19755e-04], L24= [1.11553e-04, 1.05137e-04], L31= [1.00000e-05, 1.00000e-05], L32= [8.90542e-05, 2.12391e-04], L33= [3.30681e-04, 1.44145e-04], L34= [4.80526e-05, 6.71206e-05], L41= [2.39867e-03, 3.85933e-02], L42= [1.15510e-02, 9.88244e-03], L43= [2.11727e-01, 1.03916e+00], L44= [3.22343e-01, 5.26409e-01], L51= [2.93023e-03, 1.35114e-02], L52= [4.29716e-02, 9.84756e-02], L53= [2.91703e-05, 1.62704e-04], L54= [9.23639e-04, 9.34887e-04], L61= [7.37664e-02, 3.88065e-02], L62= [4.60682e-02, 3.79303e-02], L63= [1.73720e-05, 4.92433e-03], L64= [3.74167e-02, 5.31417e-01], d1= [3.70536e-01, 2.60688e-01], d10= [3.41509e+07, 4.65493e+07], d11= [3.03740e-03, 6.23266e-03], d12= [3.52241e+07, 3.36363e+07], d13= [4.10779e+02, 3.33577e+02], d14= [1.94775e+06, 4.47347e+06], d15= [1.98893e+01, 2.17596e+01], d16= [1.27707e+09, 1.62030e+09], d17= [5.90011e+10, 5.51148e+10], d18= [4.92291e+09, 4.08835e+09], d19= [1.02600e-03, 1.56399e-03], d2= [2.91216e+12, 1.13760e+13], d20= [1.58984e+09, 1.05901e+10], d21= [1.18128e+00, 1.23605e+00], d22= [1.28017e+08, 1.31280e+08], d23= [6.73988e+01, 5.48183e+01], d24= [1.02752e+10, 1.31645e+12], d3= [1.53683e-01, 4.68471e-01], d4= [1.60238e+10, 1.08264e+10], d5= [6.03381e-01, 8.79064e-01], d6= [7.36466e+10, 5.35889e+10], d7= [9.44478e-02, 9.33577e-02], d8= [1.75869e+05, 5.49114e+06], d9= [1.16343e-02, 1.04596e-02], delta= [1.49854e-06, 1.29173e-06], epsilon= [3.14541e-06, 2.07354e-06], g1= [1.79962e-08, 4.83754e-08], g2= [1.33370e-07, 1.43193e-07], k1= [5.24469e+01, 6.71044e+01], k10= [1.31217e+07, 1.84416e+07], k11= [1.42935e+01, 2.20281e+01], k12= [1.31708e+07, 3.18167e+07], k13= [4.83228e-04, 6.01151e-04], k14= [3.17698e+05, 2.76037e+05], k15= [2.28786e-01, 1.77607e-01], k16= [1.81792e+07, 2.33339e+06], k17= [3.32540e-01, 6.46990e+00], k18= [2.07509e+07, 5.99115e+06], k19= [4.17800e+00, 5.78789e+00], k2= [4.29417e+06, 6.34277e+05], k20= [1.14977e+06, 4.65576e+05], k21= [3.49106e-04, 3.50331e-04], k22= [2.53653e+06, 1.61395e+06], k23= [1.24304e-03, 2.36396e-03], k24= [4.84487e+06, 7.63982e+06], k3= [1.84953e+01, 2.47862e+01], k4= [2.85512e+07, 2.67172e+07], k5= [6.84100e+02, 1.70045e+02], k6= [1.91565e+09, 3.97712e+09], k7= [1.10215e-02, 1.00224e-02], k8= [1.63095e+06, 1.04274e+07], k9= [1.42569e+00, 4.75430e+00], kd1= [2.87167e-01, 9.33262e-02], kd2= [4.92981e-01, 3.66295e-01], kd3= [3.21053e-01, 3.50042e-01], kd4= [7.71033e-02, 1.97863e-01], ks1= [1.58100e-05, 9.76764e-06], ks2= [1.80379e-01, 6.67026e+02], ks3= [6.38249e+00, 3.81298e+00], ks4= [1.32386e-01, 1.25364e-01], mu= [6.70316e-06, 4.12519e-06]');

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

cf(4);plotNaiveResponse(pulse0IVM,P2X4Stack2sub);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4Stack2);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4Stack2);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4Stack2);
% % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4Stack2);
% 
cf(9);plotNaiveResponse(prol2noIVM,P2X4Stack2sub);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4Stack2);

% cf(10);prestimDoseResponses(P2X4Stack2);
% 
% cf(11);plotIVMAction(P2X4Stack2);
    
continueChain(x0);
 
% % 
cf(14);plotNaiveResponse(pulse0IVM,P2X4Stack2sub);
% % 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4Stack2);

% cf(55);plotPulseShort(pulse1IVM,P2X4Stack2);


% % % 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4Stack2);

% cf(56);plotPulseShort(pulse3IVM,P2X4Stack2);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4Stack2);

% cf(57);plotPulseShort(pulse10IVM,P2X4Stack2);
% % 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4Stack2);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4Stack2sub);
% 
% cf(20);prestimDoseResponses(P2X4Stack2);
% % 
% cf(21);plotIVMAction(P2X4Stack2);

 

save(['twalk_P2X4Stack2_var_no_IVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


