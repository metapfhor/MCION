global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H13','H14','H21','H23','H23','H24','H3','H3D','H4','H51','H52','H53','H54','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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

[err1] = dataVarError(pulse0IVM,P2X4Stack3sub);
[err2] = dataVarError(pulse1IVM,P2X4StackDeMix6);
[err3] = dataVarError(pulse3IVM,P2X4StackDeMix6);
[err4] = dataVarError(pulse10IVM,P2X4StackDeMix6);
[err5] = dataVarError(prol3IVM,P2X4StackDeMix6);
[err6] = dataVarError(prol2noIVM,P2X4Stack3sub);

err7 = normPrestimDoseError(P2X4StackDeMix6);

err8 = normIVMRecoveryError(P2X4StackDeMix6);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(P2X4StackDeMix6);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior',@(x) 1, 'logLikelihood',{{err1,err6,err2,err3,err4,err5,@(x) err7(x)/10,err8}},'bounds',bounds);

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

[x0,xp0]=twalkStringParse(' H11= [1.91462e-03, 1.07601e-03], H12= [1.43894e+00, 4.05539e+00], H13= [1.23358e-01, 3.18513e-02], H14= [2.48359e+01, 4.32683e+01], H3= [1.33180e-02, 4.21905e-04], H3D= [3.18888e-02, 3.66834e-02], H51= [1.47203e-03, 9.57003e-04], L11= [3.10805e-02, 2.80153e-02], L12= [9.01327e-02, 5.07855e-02], L13= [9.12884e-02, 7.73806e-02], L14= [3.75348e-01, 4.05217e-02], L21= [5.51401e-02, 1.71542e-02], L22= [4.25010e-01, 8.21293e-01], L23= [4.38287e-02, 2.25625e-03], L24= [8.09504e+00, 3.94677e+00], L31= [7.37355e-04, 3.76794e-05], L32= [3.19488e-04, 4.60819e-03], L33= [3.64616e-02, 1.09691e-02], L34= [7.19122e-02, 2.47837e-01], L41= [3.81459e-02, 6.15503e-02], L42= [1.04775e-02, 2.17766e-03], L43= [2.34321e-02, 1.00590e-02], L44= [3.16413e+00, 7.47296e+01], L51= [2.57309e-02, 6.21458e-05], L52= [4.24095e-02, 3.59638e-02], L53= [4.51595e-02, 3.48429e-02], L54= [1.48246e-02, 2.65734e-02], L61= [3.70294e-02, 3.02166e-02], L62= [1.91449e-03, 2.01690e-03], L63= [1.57831e-02, 3.08358e-02], L64= [3.78898e+09, 1.61459e-01], alpha1= [3.40990e+00, 4.85355e+00], alpha2= [9.76833e+00, 9.95054e+00], alpha3= [5.64731e+00, 5.94532e+00], beta1= [2.59617e+00, 2.25389e+01], beta2= [7.15470e-01, 9.58339e-01], beta3= [2.22145e+08, 2.35952e+00], d1= [1.56702e-01, 2.83694e-01], d10= [3.52604e+06, 5.45754e+06], d11= [2.17641e+00, 1.84164e+00], d12= [9.73812e+05, 3.47538e+06], d13= [3.11454e+00, 1.87498e+00], d14= [8.62601e+06, 1.28733e+07], d15= [2.16097e+00, 5.36516e+00], d16= [2.99479e+07, 3.01061e+07], d17= [3.74913e+00, 7.77131e+00], d18= [1.18647e+06, 7.99047e+06], d19= [1.50041e+00, 5.77236e-01], d2= [8.87326e+06, 2.00433e+06], d21= [1.15800e+02, 1.68432e+02], d22= [8.27188e+07, 9.05262e+07], d23= [2.28119e+00, 1.25465e+00], d24= [1.20618e+09, 6.93782e+08], d3= [2.73038e-01, 2.94156e-03], d4= [5.45749e+05, 3.47281e+09], d5= [9.26267e-01, 8.38549e-01], d6= [3.25861e+09, 2.72524e+05], d7= [3.30313e+00, 3.97400e+00], d8= [2.39141e+07, 2.17143e+07], d9= [9.26464e+00, 5.45302e+00], g1= [5.35317e-08, 5.40701e-08], k1= [1.74889e+01, 3.84264e+00], k10= [1.05927e+07, 1.79208e+06], k11= [6.28382e+00, 6.55928e+00], k12= [2.83693e+06, 1.98099e+06], k13= [8.17502e-05, 4.64611e-05], k14= [1.01850e+07, 1.38345e+07], k15= [6.43440e-01, 6.70632e-01], k16= [2.24406e+07, 3.29737e+07], k17= [7.42530e-01, 9.42077e-01], k18= [8.25692e+07, 9.32145e+06], k19= [6.60941e+02, 8.90089e+02], k2= [3.66894e+06, 5.76913e+06], k20= [9.19889e+07, 8.50504e+06], k22= [5.59925e+07, 8.43460e+07], k24= [9.92406e+07, 2.18164e+06], k3= [3.88293e+00, 1.00785e+01], k4= [6.51042e+06, 4.74713e+06], k5= [4.96486e+01, 1.44818e+01], k6= [7.90818e+06, 7.93254e+06], k7= [1.10343e+01, 5.02017e+01], k8= [1.71020e+07, 4.36571e+07], k9= [9.87883e+00, 4.37379e+00], kd1= [1.10378e-01, 8.32022e-02], kd2= [1.53606e-01, 7.95192e-01], kd3= [1.85193e-01, 1.91026e-01], kd4= [4.64891e-01, 1.26609e-01], ks1= [5.02700e-07, 4.22121e-06], ks2= [8.12357e-02, 2.62145e-02], ks3= [2.09267e-02, 3.03378e-01], ks4= [8.36095e-01, 9.82554e-01]');

Niter=8000;
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
    
%     
% continueChain(xp0);
% 
% cf(4);plotNaiveResponse(pulse0IVM,P2X4StackDeMix6);
% % % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4StackDeMix6);
% % % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4StackDeMix6);
% % % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4StackDeMix6);
% % % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4StackDeMix6);
% % 
% % cf(9);plotNaiveResponse(prol2noIVM,P2X4StackDeMix6);
% 
% %  cf(10);chainPrestimDoseResponse(xp0,P2X4StackDeMix6);
% 
% cf(10);prestimDoseResponses(P2X4StackDeMix6);
% % 
% cf(11);plotIVMAction(P2X4StackDeMix6);
    
continueChain(x0);
% %  
% % % % 
cf(14);plotNaiveResponse(pulse0IVM,P2X4StackDeMix6);
% 
cf(15);plotNaiveResponse(pulse1IVM,P2X4StackDeMix6);

% cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix6);
%
cf(16);plotNaiveResponse(pulse3IVM,P2X4StackDeMix6);

% cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix6);
% 
cf(17);plotNaiveResponse(pulse10IVM,P2X4StackDeMix6);

% cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix6);
% 
cf(18);plotNaiveResponse(prol3IVM,P2X4StackDeMix6);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4StackDeMix6);

cf(20);prestimDoseResponses(P2X4StackDeMix6);
% 
cf(21);plotIVMAction(P2X4StackDeMix6);
% % % 
% 
%  

save(['twalk_P2X4StackDeMix6_var_all' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')

return;

cf(55);plotPulseShort(pulse1IVM,P2X4StackDeMix6);
cf(56);plotPulseShort(pulse3IVM,P2X4StackDeMix6);
cf(57);plotPulseShort(pulse10IVM,P2X4StackDeMix6);

