global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H3D','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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

fparam('H11')=1;
fparam('H12')=1;
fparam('H13')=1;
fparam('H14')=1;
fparam('kd1')=1;
fparam('kd2')=1;
fparam('kd3')=1;
fparam('kd4')=1;
fparam('ks1')=1;
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
pMax('ks4')=1;

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

pMax('g2')=7e-8;

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
[err2] = dataVarError(pulse1IVM,P2X4StackDeMix3);
[err3] = dataVarError(pulse3IVM,P2X4StackDeMix3);
[err4] = dataVarError(pulse10IVM,P2X4StackDeMix3);
[err5] = dataVarError(prol3IVM,P2X4StackDeMix3);
[err6] = dataVarError(prol2noIVM,P2X4Stack2sub);

err7 = normPrestimDoseError(P2X4StackDeMix3);

err8 = normIVMRecoveryError(P2X4StackDeMix3);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4StackDeMix3);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err6,err2,err3,err4,err5}},'bounds',bounds);

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

% [x0,xp0]=twalkStringParse('H12= [6.45898e-02, 5.65077e-01], H13= [2.51327e-02, 7.22083e-02], H14= [1.76765e-02, 2.32172e-02], H3D= [1.20799e-02, 1.90519e-02], L11= [1.18305e-03, 1.14982e-03], L12= [1.00693e-02, 1.02374e-02], L13= [3.59074e-02, 3.64836e-02], L14= [1.03966e-01, 1.63596e-01], L21= [2.40287e-02, 2.36091e-02], L22= [1.52265e-02, 1.90381e-02], L23= [6.74331e-02, 7.69805e-02], L24= [1.45407e+00, 1.67045e+00], L31= [1.22860e-03, 3.60052e-03], L32= [1.53292e-02, 1.13063e-02], L33= [3.53913e-02, 4.79722e-02], L34= [3.70917e-01, 4.36163e-01], L41= [1.70127e-02, 1.75737e-02], L42= [9.05723e-03, 8.25348e-03], L43= [2.78263e-02, 2.23646e-02], L44= [1.20596e-01, 1.70469e-01], L51= [6.40694e-05, 6.13422e-05], L52= [4.23663e-02, 4.28724e-02], L53= [4.27812e-02, 4.90285e-02], L54= [4.56737e-02, 9.50467e-02], L61= [8.34311e-02, 1.00343e-01], L62= [4.86900e-04, 2.11506e-03], L63= [5.47281e-02, 4.44405e-02], L64= [1.90539e+00, 1.98650e+00], alpha1= [8.53067e+00, 8.38983e+00], alpha2= [9.02255e+00, 7.98836e+00], alpha3= [2.11336e+00, 2.94898e+00], beta1= [9.97308e-04, 9.89508e-04], beta2= [9.57437e-01, 8.77225e-01], beta3= [5.53873e+01, 2.76897e+01], g2= [9.91035e-08, 7.61281e-08], k1= [9.61506e-01, 3.58482e+00], k10= [1.87070e+07, 1.89964e+07], k11= [9.02099e+00, 8.71507e+00], k12= [5.92558e+06, 7.39823e+06], k13= [3.89954e-05, 3.01471e-05], k14= [4.65394e+07, 6.01923e+07], k15= [3.17102e-02, 9.91057e-01], k16= [1.45546e+07, 2.32052e+07], k17= [2.78725e-02, 2.42480e-02], k18= [7.70263e+06, 8.12876e+06], k19= [1.66903e+01, 1.67556e+01], k2= [1.84465e+06, 1.55857e+06], k20= [6.57714e+07, 6.76647e+07], k22= [1.72836e+07, 2.35360e+07], k24= [1.02014e+07, 7.89904e+06], k3= [6.29995e+00, 5.37911e+00], k4= [3.69188e+06, 4.06072e+06], k5= [4.09093e+00, 4.00412e+00], k6= [2.63985e+06, 9.00095e+06], k7= [2.12735e-03, 2.23712e-03], k8= [1.10940e+07, 4.71904e+07], k9= [5.13686e+00, 4.04641e+00], kd2= [1.82579e-01, 1.64631e-01], kd3= [1.75735e-01, 1.58248e-01], kd4= [1.66108e-01, 1.29409e-01], ks2= [2.10484e-02, 8.36461e-02], ks3= [2.00423e-01, 2.82024e-01], ks4= [5.56599e-01, 4.97335e-01]');

Niter=10000;
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
    
    
% continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,P2X4StackDeMix3);
% % % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4StackDeMix3);
% % % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4StackDeMix3);
% % % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4StackDeMix3);
% % % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4StackDeMix3);
% % 
% % cf(9);plotNaiveResponse(prol2noIVM,P2X4StackDeMix3);
% 
% %  cf(10);chainPrestimDoseResponse(xp0,P2X4StackDeMix3);
% 
% cf(10);prestimDoseResponses(P2X4StackDeMix3);
% % 
% cf(11);plotIVMAction(P2X4StackDeMix3);
    
continueChain(x0);
 
% % % 
% cf(14);plotNaiveResponse(pulse0IVM,P2X4StackDeMix3);
% % % 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4StackDeMix3);
% 
% % cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix3);
% 
% 
% % % % 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4StackDeMix3);
% 
% % cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix3);
% % % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4StackDeMix3);
% % 
% % cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix3);
% % % 
% cf(18);plotNaiveResponse(prol3IVM,P2X4StackDeMix3);
% % % 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4StackDeMix3);
% % 
% cf(20);prestimDoseResponses(P2X4StackDeMix3);
% % % 
% cf(21);plotIVMAction(P2X4StackDeMix3);
% 

 

save(['twalk_P2X4StackDeMix3_var_1&3_IVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')

return;

cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix3);
cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix3);
cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix3);

