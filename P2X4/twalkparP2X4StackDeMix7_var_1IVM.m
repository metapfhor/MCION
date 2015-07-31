global globalStruct baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H3D','H4','H51','H52','H53','H54','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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
% %  
fparam('k19')=1;
fparam('k20')=1;
% fparam('k21')=1;
fparam('k22')=1;
% fparam('k23')=1;
fparam('k24')=1;
% 
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
% 
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

fparam('H51')=1;

fparam('H11')=1;
fparam('H12')=1;
fparam('H13')=1;
fparam('H14')=1;
fparam('kd1')=1;
fparam('kd2')=1;
fparam('kd3')=1;
fparam('kd4')=1;
% fparam('ks1')=1;
fparam('ks2')=1;
fparam('ks3')=1;
fparam('ks4')=1;
fparam('H3D')=1;
fparam('H3')=1;

% fparam('H4')=1;
% 

fparam('alpha1')=1;
fparam('alpha2')=1;
fparam('alpha3')=1;

fparam('beta1')=1;
fparam('beta2')=1;
fparam('beta3')=1;
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

pMin('alpha1')=2;
pMax('alpha1')=1000;

pMin('alpha2')=2;
pMax('alpha2')=1000;

pMax('beta2')=1;

pMin('alpha3')=2;
pMax('alpha3')=1000;

pMax('d1')=1;
pMax('d3')=1;
pMax('d5')=1;
pMax('d7')=1;

pMax('H4')=0.01;

pMin('H12')=0.04;



pMax('H11')=1;
pMax('H12')=10;
pMax('H13')=10;
pMax('H14')=100;


pMin('H12')=0.1;

pMax('L11')=0.1;
pMax('L12')=0.1;
pMax('L13')=0.1;
pMax('L14')=0.5;

pMin('L11')=1e-5;
pMin('L12')=1e-5;
pMin('L13')=1e-5;
pMin('L14')=1e-5;


pMin('L22')=1e-2;
pMin('L23')=5e-2;
pMin('L24')=8e-2;

pMax('L21')=0.1;
pMax('L22')=1;
pMax('L23')=3;
pMax('L24')=10;

% pMin('L44')=1/3;
% pMin('L24')=1/3;

pMin('L21')=1/60;
pMin('L41')=1/60;
pMin('L61')=1/60;

pMin('L22')=1e-4;
pMin('L23')=1e-4;



pMin('d1')=5;
pMin('d3')=5;
pMin('d5')=5;

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

pMax('d2')=10^7.5;
pMax('d4')=10^7.5;
pMax('d6')=10^7.5;

pMax('d8')=10^7.5;
pMax('d10')=10^7.5;
pMax('d12')=10^7.5;

pMax('d14')=10^7.5;
pMax('d16')=10^7.5;
pMax('d18')=10^7.5;

pMax('d20')=10^7.5;
pMax('d22')=10^7.5;
pMax('d24')=10^7.5;

pMax('L31')=0.05;
pMax('L32')=0.05;
pMax('L33')=0.05;
pMax('L34')=0.5;

pMin('L31')=1e-5;
pMin('L32')=1e-5;
pMin('L33')=1e-5;
pMin('L34')=1e-5;

pMax('L51')=0.05;
pMax('L52')=0.05;
pMax('L53')=0.05;
pMax('L54')=0.5;

pMin('L51')=1e-5;
pMin('L52')=1e-5;
pMin('L53')=1e-5;
pMin('L54')=1e-5;


pMin('k8')=1e7;
pMin('k10')=10^6;
pMin('k12')=10^6;
pMin('k14')=9e6;
pMin('k16')=10^6;
pMin('k18')=10^6;
pMin('k20')=8e6;
pMin('k22')=10^6;
pMin('k24')=10^6;

pMax('k8')=10^8;
pMax('k10')=10^8;
pMax('k12')=10^8;
pMax('k14')=10^8;
pMax('k16')=10^8;
pMax('k18')=10^8;
pMax('k20')=10^8;
pMax('k22')=10^8;
pMax('k24')=10^8;

pMin('k9')=4;
pMin('k11')=4;

pMax('k9')=10;
pMax('k11')=10;

pMax('k15')=1;
pMax('k17')=1;

pMin('k15')=5e-3;
pMin('k17')=5e-3;

pMax('k21')=5e-3;
pMax('k23')=5e-3;

pMax('ks2')=0.1;
pMax('ks3')=1;
pMax('ks4')=5;

pMin('kd4')=0.1;
pMin('ks4')=0.4;


pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=1e-5;
pMin('epsilon')=1e-6;
pMax('delta')=3e-6;
pMin('delta')=1e-7;
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

[err1] = dataVarError(pulse0IVM,P2X4Stack3sub);
[err2] = dataVarError(pulse1IVM,P2X4StackDeMix7);
[err3] = dataVarError(pulse3IVM,P2X4StackDeMix7);
[err4] = dataVarError(pulse10IVM,P2X4StackDeMix7);
[err5] = normProl3IVMError(P2X4StackDeMix7);
[err6] = normProl2noIVMError(P2X4Stack3sub);

err7 = parPrestimDoseError(P2X4StackDeMix7,P2X4Stack3sub);


err8 = normIVMRecoveryError(P2X4StackDeMix7);

err9 = parIVMDoseResponseErr(P2X4StackDeMix7);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4StackDeMix7);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'pulse0IVM',pulse0IVM,'pulse03IVM',pulse03IVM,'pulse1IVM',pulse1IVM,'pulse3IVM',pulse3IVM,'pulse6IVM',pulse6IVM,'pulse10IVM',pulse10IVM);
% glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);

globalStruct=glblStruct;

p = struct('globalStruct',glblStruct,'logPrior',@(x) dilation(x), 'parLogLikelihood',{{err5,err6}}, 'serLogLikelihood',@(x) -(err7(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end

while p.logPrior(xp0)==0 || sum(xp0<0)~=0 || sum(xp0==x0)~=0
    xp0 = x0.*(1+0.14*(randn(size(x0))+0.01));
end

% [x0,xp0]=twalkStringParse('H11= [1.54539e-03, 1.45851e-03], H12= [7.64104e+00, 8.64788e+00], H13= [6.62996e-02, 6.94060e-02], H14= [5.83778e-02, 4.59873e-02], H3= [1.20682e-02, 1.25135e-02], H3D= [5.68888e-03, 1.14620e-02], H51= [1.49875e-03, 1.04581e-03], L11= [7.52597e-03, 7.86614e-03], L12= [1.02727e-03, 9.40337e-04], L13= [2.52660e-02, 2.15124e-02], L14= [4.73783e-01, 4.34301e-01], L21= [1.74754e-02, 4.75161e-02], L22= [5.45879e-02, 4.50701e-02], L23= [6.98714e-02, 8.28930e-02], L24= [2.81071e+00, 2.80616e+00], L31= [3.26652e-04, 2.56727e-04], L32= [2.92622e-05, 7.11966e-05], L33= [3.91733e-02, 4.18503e-02], L34= [9.45432e-02, 1.21630e-01], L41= [3.06779e-02, 2.70678e-02], L42= [1.36421e-02, 2.23526e-02], L43= [1.12488e-01, 8.82400e-02], L44= [3.22608e-01, 4.04921e-01], L51= [5.77158e-05, 3.26399e-05], L52= [5.78493e-03, 5.09304e-03], L53= [3.13780e-02, 1.49793e-02], L54= [4.46995e-02, 4.90957e-02], L61= [2.26621e-02, 2.63844e-02], L62= [2.11913e-03, 2.83439e-03], L63= [9.60501e-02, 9.12163e-02], L64= [2.41338e-01, 2.63240e-01], alpha1= [4.14590e+00, 4.64894e+00], alpha2= [2.53443e+00, 2.15133e+00], alpha3= [5.01616e+00, 1.07613e+01], beta1= [9.55756e-01, 1.47734e+00], beta2= [7.83793e-01, 7.18586e-01], beta3= [9.65931e+00, 4.95674e+00], d1= [4.41372e-03, 4.47578e-03], d10= [1.96130e+06, 1.88221e+06], d11= [1.51134e+00, 1.34236e+00], d12= [4.54473e+06, 4.44035e+06], d13= [1.25227e+00, 1.72707e+00], d14= [7.58482e+05, 8.64141e+05], d15= [2.13469e+00, 2.02432e+00], d16= [1.04675e+07, 1.11332e+07], d17= [9.94353e-01, 8.73830e-01], d18= [9.99896e+05, 9.95201e+05], d19= [1.73992e+00, 4.47793e-01], d2= [6.53766e+06, 2.64670e+06], d21= [1.15979e+00, 1.36149e+00], d22= [3.26437e+06, 1.93611e+07], d23= [1.24251e+00, 1.24864e+00], d24= [6.70669e+04, 5.84990e+05], d3= [7.75154e-02, 8.76792e-02], d4= [1.96255e+07, 3.09479e+07], d5= [9.42142e-01, 5.98599e-01], d6= [1.10254e+05, 3.64992e+06], d7= [8.03462e+00, 9.67953e+00], d8= [2.94940e+07, 3.06494e+07], d9= [4.40455e-01, 1.14611e+00], delta= [7.05315e-07, 7.55889e-07], epsilon= [3.16575e-06, 2.71467e-06], g1= [6.71788e-08, 6.01994e-08], g2= [7.27275e-08, 6.84389e-08], k1= [2.20286e+01, 2.20121e+01], k10= [8.91425e+06, 6.69137e+06], k11= [4.30485e+00, 8.02050e+00], k12= [1.36760e+06, 1.24468e+06], k13= [7.94271e-05, 9.28428e-05], k14= [9.61154e+06, 1.05812e+07], k15= [4.08773e-01, 4.27552e-01], k16= [3.47903e+07, 3.36318e+07], k17= [7.48123e-01, 5.36198e-01], k18= [1.29598e+06, 1.10900e+06], k19= [1.35391e+01, 1.34963e+01], k2= [4.58864e+06, 4.41729e+06], k20= [8.16696e+06, 8.33196e+06], k22= [3.50370e+07, 6.73397e+06], k24= [3.95983e+07, 2.94859e+07], k3= [4.64479e+00, 4.68800e+00], k4= [1.13005e+07, 8.16044e+06], k5= [3.85468e+00, 2.82274e+00], k6= [1.33337e+06, 1.45155e+06], k7= [2.72466e-03, 2.59862e-03], k8= [1.37394e+07, 8.04389e+06], k9= [4.12773e+00, 4.55996e+00], kd2= [1.72421e-01, 1.80610e-01], kd3= [1.47226e-01, 1.44855e-01], kd4= [1.22929e-01, 1.41585e-01], ks2= [3.81053e-02, 4.61235e-02], ks3= [1.29193e-01, 1.64938e-01], ks4= [5.25743e-01, 8.81620e-01], mu= [7.84846e-06, 1.00994e-05]');

Niter=10;
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

[xxp,lt,beta,acc] = APTtwalkreflect('mixedLogTarget',Niter,x0,xp0,p,3);

[x0,xp0] = twalkEnds(squeeze(xxp(:,1,:)));
% [x3,xp3] = twalkEnds(squeeze(xxp(:,3,:)));  

% cf(2);chainDistributions(unravelChain(xxp));
    
%     
% continueChain(xp0);
% 
% cf(4);plotNaiveResponse(pulse0IVM,P2X4StackDeMix7);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4StackDeMix7);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4StackDeMix7);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4StackDeMix7);
% % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4StackDeMix7);
% 
% cf(9);plotNaiveResponse(prol2noIVM,P2X4StackDeMix7);
% 
%  cf(10);chainPrestimDoseResponse(xp0,P2X4StackDeMix7);
% 
% cf(10);prestimDoseResponses(P2X4StackDeMix7);
% 
% cf(11);plotIVMAction(P2X4StackDeMix7);
%     

continueChain(x0);
% % % %  

% % % % % % 
% cf(14);plotNaiveResponse(pulse0IVM,P2X4StackDeMix7);
% % 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4StackDeMix7);
% 
% % cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix7);
% %
cf(16);plotNaiveResponse(pulse3IVM,P2X4StackDeMix7);

% cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix7);
% 
cf(17);plotNaiveResponse(pulse10IVM,P2X4StackDeMix7);
% 
% % cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix7);
% % 
cf(18);plotNaiveResponse(prol3IVM,P2X4StackDeMix7);
% % 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4StackDeMix7);
% 
% cf(20);prestimDoseResponses(P2X4StackDeMix7);
% % % 
% cf(21);plotIVMAction(P2X4StackDeMix7);
% % % % % 

 

save(['twalk_P2X4StackDeMix7_var_all' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami','beta')

return;

cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix7);
cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix7);
cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix7);

