global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H3D','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
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
% fparam('k13')=1;
% fparam('k14')=1;
% fparam('k15')=1;
% fparam('k16')=1;
% fparam('k17')=1;
% fparam('k18')=1;
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
% fparam('d1')=1;
% fparam('d2')=1;
% fparam('d3')=1;
% fparam('d4')=1;
% fparam('d5')=1;
% fparam('d6')=1;

% fparam('d7')=1;
% fparam('d8')=1;
% fparam('d9')=1;
% fparam('d10')=1;
% fparam('d11')=1;
% fparam('d12')=1;
% 
% fparam('d13')=1;
% fparam('d14')=1;
% fparam('d15')=1;
% fparam('d16')=1;
% fparam('d17')=1;
% fparam('d18')=1;
% % 
% fparam('d19')=1;
% fparam('d21')=1;
% fparam('d22')=1;
% fparam('d23')=1;
% fparam('d24')=1;

fparam('L11')=1;
fparam('L12')=1;
fparam('L13')=1;
fparam('L14')=1;

fparam('L21')=1;
fparam('L22')=1;
fparam('L23')=1;
fparam('L24')=1;
% 
% fparam('L31')=1;
% fparam('L32')=1;
% fparam('L33')=1;
% fparam('L34')=1;
% 
% fparam('L41')=1;
% fparam('L42')=1;
% fparam('L43')=1;
% fparam('L44')=1;
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
% fparam('H13')=1;
fparam('H14')=1;
% fparam('kd1')=1;
fparam('kd2')=1;
% fparam('kd3')=1;
fparam('kd4')=1;
% fparam('ks1')=1;
fparam('ks2')=1;
% fparam('ks3')=1;
fparam('ks4')=1;
fparam('H3D')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% 

fparam('alpha1')=1;
% fparam('alpha2')=1;
fparam('alpha3')=1;

fparam('beta1')=1;
% fparam('beta2')=1;
fparam('beta3')=1;
% fparam('V')=0;
% fparam('epsilon')=1;
% fparam('delta')=1;
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
pMax('alpha1')=10;

pMin('alpha2')=2;
pMax('alpha2')=10;

pMax('beta2')=1;

pMin('alpha3')=2;
pMax('alpha3')=10;

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

pMax('L11')=0.1;
pMax('L12')=0.1;
pMax('L13')=0.1;
pMax('L14')=0.1;

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

pMin('L21')=1/60;
pMin('L41')=1/60;
pMin('L61')=1/60;

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


pMax('L31')=0.05;
pMax('L32')=0.05;
pMax('L33')=0.05;
pMax('L34')=0.05;

pMin('L31')=1e-5;
pMin('L32')=1e-5;
pMin('L33')=1e-5;
pMin('L34')=1e-5;

pMax('L51')=0.05;
pMax('L52')=0.05;
pMax('L53')=0.05;
pMax('L54')=0.05;

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

pMax('ks2')=1;
pMax('ks3')=1;
pMax('ks4')=1;

pMin('kd4')=0.1;
pMin('ks4')=0.4;

pMax('L1')=50;
pMax('L4')=10;
pMax('mu')=1e-5;
pMin('mu')=1e-6;
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
[err2] = dataVarError(pulse1IVM,P2X4StackDeMix4);
[err3] = dataVarError(pulse3IVM,P2X4StackDeMix4);
[err4] = dataVarError(pulse10IVM,P2X4StackDeMix4);
[err5] = dataVarError(prol3IVM,P2X4StackDeMix4);
[err6] = dataVarError(prol2noIVM,P2X4Stack2sub);

err7 = normPrestimDoseError(P2X4StackDeMix4);

err8 = normIVMRecoveryError(P2X4StackDeMix4);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4StackDeMix4);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{@(x) 10*err2(x),err3,err4,@(x) 10*err5(x),err7,err8}},'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
   xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end

while p.logPrior(xp0)==0 || sum(xp0<0)~=0
    xp0 = x0.*(1+0.14*randn(size(x0)));
end

% [x0,xp0]=twalkStringParse('H12= [4.26724e-02, 5.20246e-02], H14= [1.56491e-02, 1.75872e-02], H3D= [0.00000e+00, 0.00000e+00], L11= [3.17988e-02, 2.62344e-02], L12= [9.14734e-02, 9.10545e-02], L13= [4.71985e-02, 4.71522e-02], L14= [1.84071e-02, 3.35163e-02], L21= [2.20704e-02, 2.26599e-02], L22= [6.57427e-02, 5.98848e-02], L23= [9.14905e-02, 8.94097e-02], L24= [1.40000e-01, 9.63611e-02], L51= [6.13615e-05, 4.09924e-05], L52= [3.11171e-02, 3.03019e-02], L53= [1.00480e-02, 1.19600e-02], L54= [4.57746e-02, 4.93783e-02], L61= [3.77577e-02, 2.04448e-02], L62= [5.99523e-06, 6.75335e-06], L63= [2.22859e-04, 8.58507e-04], L64= [5.91436e-02, 6.71442e-02], alpha1= [6.64826e+00, 7.44345e+00], alpha3= [3.70972e+00, 3.87477e+00], beta1= [1.30456e-03, 1.29271e-03], beta3= [9.98258e+00, 9.82167e+00], epsilon= [1.78706e-06, 2.53791e-06], g2= [1.35909e-07, 1.18985e-07], k1= [5.20945e+00, 5.83838e+00], k10= [1.49537e+07, 9.64609e+06], k11= [6.35700e+00, 6.99510e+00], k12= [3.26529e+06, 9.30461e+07], k19= [3.04832e+01, 1.35817e+01], k2= [1.74529e+06, 1.69200e+06], k20= [1.11730e+07, 1.00834e+07], k22= [3.16170e+07, 3.15148e+07], k24= [2.47664e+07, 7.57309e+07], k3= [7.93029e+00, 7.68249e+00], k4= [5.25177e+06, 4.22579e+06], k5= [2.67688e+00, 2.22158e+00], k6= [4.45280e+06, 4.05653e+06], k7= [3.14240e-03, 2.86907e-03], k8= [3.79140e+07, 3.45684e+07], k9= [5.55319e+00, 4.77783e+00], kd2= [2.00000e-01, 1.64109e-01], kd4= [1.36234e-01, 1.44869e-01], ks2= [2.64782e-01, 1.18677e-01], ks4= [5.87306e-01, 6.78641e-01], mu= [3.00000e-06, 5.72422e-06]');

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
    

% cf(2);chainDistributions(unravelChain(xxp));
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,P2X4StackDeMix4);
% % 
cf(51);plotNaiveResponse(pulse1IVM,P2X4StackDeMix4);
% % 
cf(6);plotNaiveResponse(pulse3IVM,P2X4StackDeMix4);
% % 
cf(7);plotNaiveResponse(pulse10IVM,P2X4StackDeMix4);
% % 
cf(8);plotNaiveResponse(prol3IVM,P2X4StackDeMix4);
% 
% cf(9);plotNaiveResponse(prol2noIVM,P2X4StackDeMix4);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4StackDeMix4);

cf(10);prestimDoseResponses(P2X4StackDeMix4);
% 
cf(11);plotIVMAction(P2X4StackDeMix4);
    
continueChain(x0);
 
% % 
% cf(14);plotNaiveResponse(pulse0IVM,P2X4StackDeMix4);
% % 
cf(15);plotNaiveResponse(pulse1IVM,P2X4StackDeMix4);

% cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix4);


% % % 
cf(16);plotNaiveResponse(pulse3IVM,P2X4StackDeMix4);

% cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix4);
% % 
cf(17);plotNaiveResponse(pulse10IVM,P2X4StackDeMix4);
% 
% cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix4);
% % 
cf(18);plotNaiveResponse(prol3IVM,P2X4StackDeMix4);
% % 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4StackDeMix4);
% 
cf(20);prestimDoseResponses(P2X4StackDeMix4);
% % 
cf(21);plotIVMAction(P2X4StackDeMix4);


 

save(['twalk_P2X4StackDeMix4_var_1&3_IVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')

return;

cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix4);
cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix4);
cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix4);

