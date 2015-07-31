global globalStruct baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'d1','d2','d3','d4','d5','d6','d7','d8','d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H0','H11','H12','H13','H14','H21','H23','H23','H24','H3','H3D','H4','H5','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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


fparam('L1')=0;
fparam('L2')=0;
fparam('L3')=0;
fparam('L4')=0;
fparam('L5')=0;
fparam('L6')=0;

fparam('W1')=0;
fparam('W2')=0;



fparam('H0')=1;
fparam('H5')=1;

fparam('H11')=1;

fparam('kd1')=1;

fparam('ks1')=1;
fparam('H3')=1;

fparam('r1')=0;
fparam('r2')=0;
fparam('r3')=0;

fparam('v1')=0;
fparam('v2')=0;
fparam('v3')=0;
% 
% fparam('rho1')=1;
% fparam('rho2')=1;
% fparam('rho3')=1;

fparam('H11')=1;
fparam('H12')=0;
fparam('H13')=0;
fparam('H14')=0;


fparam('kd1')=1;
fparam('kd2')=0;
fparam('kd3')=0;
fparam('kd4')=0;


fparam('ks1')=1;
fparam('ks2')=0;
fparam('ks3')=0;
fparam('ks4')=0;


% fparam('H4')=1;
% 


% fparam('V')=0;
fparam('epsilon')=0;
fparam('delta')=0;
fparam('mu')=0;
% 
% fparam('n1')=1;
% fparam('n2')=1;
% fparam('n3')=1;

fparam('A')=0;
fparam('J')=0;

vals=fparam.values;
Npar=sum([vals{:}]);



pMin('r1')=1;
pMin('r2')=1;
pMin('r3')=1;

pMax('gamma1')=10;
pMax('gamma2')=10;
pMax('gamma3')=100;

pMax('W2')=1;

pMax('rho1')=10;
pMax('rho2')=10;
pMax('rho3')=10;

pMin('alpha1')=2;
pMax('alpha1')=1000;

pMin('alpha2')=2;
pMax('alpha2')=1000;



pMin('alpha3')=2;
pMax('alpha3')=1000;



pMax('H4')=0.01;

pMax('H0')=0.01;

pMin('H12')=0.04;



pMax('H11')=1;
pMax('H12')=10;
pMax('H13')=10;
pMax('H14')=100;


pMin('H12')=0.1;

pMax('L11')=0.1;
pMax('L12')=0.1;
pMax('L13')=1;
pMax('L14')=1;

pMin('L11')=1e-5;
pMin('L12')=1e-5;
pMin('L13')=1e-5;
pMin('L14')=1e-5;


pMin('L22')=1e-2;
pMin('L23')=5e-2;
pMin('L24')=8e-2;

pMax('L21')=0.5;
pMax('L22')=0.5;
pMax('L23')=0.5;
pMax('L24')=0.5;


pMax('L41')=0.5;
pMax('L42')=0.5;
pMax('L43')=0.5;
pMax('L44')=0.5;


pMax('L61')=0.5;
pMax('L62')=0.5;
pMax('L63')=0.5;
pMax('L64')=0.5;

% pMin('L44')=1/3;

pMax('L20')=1;
pMax('L40')=1;
pMax('L60')=1;


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


pMin('k8')=1e6;
pMin('k10')=10^6;
pMin('k12')=10^6;
pMin('k14')=1e6;
pMin('k16')=10^6;
pMin('k18')=10^6;
pMin('k20')=1e6;
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

pMax('k15')=4;
pMax('k17')=4;

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



pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;


glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'pulse0IVM',pulse0IVM,'pulse03IVM',pulse03IVM,'pulse1IVM',pulse1IVM,'pulse3IVM',pulse3IVM,'pulse6IVM',pulse6IVM,'pulse10IVM',pulse10IVM,'prol2noIVM',prol2noIVM,'prol3IVM',prol3IVM);
% glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);
glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'pulse0IVMs',pulse0IVMs,'pulse03IVMs',pulse03IVMs,'pulse1IVMs',pulse1IVMs,'pulse3IVMs',pulse3IVMs,'pulse6IVMs',pulse6IVMs,'pulse10IVMs',pulse10IVMs,'prol2noIVMs',prol2noIVMs,'prol3IVMs',prol3IVMs);


globalStruct=glblStruct;


[err1] = dataVarError(pulse0IVM,P2X4Inactsub);
[err2] = dataVarError(pulse1IVM,P2X4Inact2factor);
[err3] = dataVarError(pulse3IVM,P2X4Inact2factor);
[err4] = dataVarError(pulse10IVM,P2X4Inact2factor);
[err5] = normProl3IVMError(P2X4Inact2factor);

s5 = prol3IVMErrorFuture2(P2X4Inact2factor);

err6 = normProl2noIVMError(P2X4Inactsub);

s6 = prol2noIVMErrorFuture(P2X4Inact2factor);

err7 = parPrestimDoseError30(P2X4Inact2factor,P2X4Inactsub);

s7 = parPrestimDoseError30Futuresub(P2X4Inact2factor,P2X4Inact2factor);

err8 = normIVMRecoveryError(P2X4Inact2factor);

err9 = parIVMDoseResponseErr(P2X4Inact2factor);

s9 = parIVMDoseResponseErrFuture(P2X4Inact2factor);

s9 = parIVMDoseResponseErrFuture4sub(P2X4Inact2factor);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkineticsFactor2(P2X4Inact2factor);

p = struct('globalStruct',glblStruct,'logPrior',@(x) dilation(x),'futureLogLikelihood',{{s6,s7,s9}}, 'parLogLikelihood',{{err5,err6}}, 'serLogLikelihood',@(x) -(err7(x)+err9(x)),'bounds',bounds);

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

% [x0,xp0]=twalkStringParse('H0= [9.37849e-03, 1.80364e-03], H11= [8.59076e-04, 5.94621e-04], H12= [9.64809e+00, 3.31798e+00], H13= [5.00725e+00, 3.62260e+00], H14= [9.63618e-01, 8.82334e+01], H3= [7.78074e-03, 8.46003e-03], H5= [2.43549e-03, 8.60549e-04], L1= [2.16788e-03, 1.62762e-03], L2= [2.64355e-02, 2.78342e-02], L3= [5.05721e-05, 9.70742e-05], L4= [5.06491e-01, 1.52939e-01], L5= [5.95713e-02, 6.06745e-02], L6= [2.19552e+00, 7.60891e-01], W1= [5.47678e-04, 2.46846e-02], W2= [3.20022e-01, 6.34391e-01], delta= [6.54285e-07, 6.82409e-07], epsilon= [2.99725e-06, 2.41850e-06], g1= [5.95187e-08, 6.59545e-08], g2= [7.39997e-08, 7.11867e-08], k1= [1.91473e+00, 2.10910e+00], k2= [2.23073e+06, 2.36004e+06], k3= [8.48239e+00, 8.18995e+00], k4= [4.75489e+06, 4.54914e+06], k5= [1.38069e+01, 1.89331e+01], k6= [5.43141e+05, 2.86567e+05], kd1= [1.92154e-01, 1.81537e-01], kd2= [4.52172e-01, 4.09297e-01], kd3= [3.19838e-01, 3.19560e-01], kd4= [2.97303e-01, 3.18276e-01], ks1= [3.61694e-05, 9.50059e-06], ks2= [4.96071e-02, 4.13976e-02], ks3= [7.79129e-01, 9.22431e-01], ks4= [4.58275e-01, 4.27851e-01], mu= [5.14644e-06, 4.98773e-06], r1= [2.39310e+00, 2.30614e+00], r2= [1.00356e+00, 1.05548e+00], r3= [2.29535e+00, 1.98210e+00], v1= [4.44666e-01, 4.18912e-01], v2= [6.09442e-02, 4.73121e-02], v3= [1.09058e-02, 5.84038e-03]');


Niter=300;

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
t = now;
[xxp,lt,beta,acc] = parAPTtwalkreflect('futureLogTarget',Niter,x0,xp0,p,3);
Total_Time=[ num2str((now-t)*3600*24) ' seconds']
[x0,xp0] = twalkEnds(squeeze(xxp(:,1,:)));
% [x3,xp3] = twalkEnds(squeeze(xxp(:,3,:)));  

% cf(2);chainDistributions(unravelChain(xxp));
% X=unravelChain(xxp);
% cf(2);chainDistribution(X,'k15');
cf(3);tempConvergence(beta,lt)
    
%     
% continueChain(xp0);
% 
% cf(4);plotNaiveResponse(pulse0IVM,P2X4Inact2factor);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4Inact2factor);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4Inact2factor);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4Inact2factor);
% % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4Inact2factor);
% 
% cf(9);plotNaiveResponse(prol2noIVM,P2X4Inact2factor);
% 
%  cf(10);chainPrestimDoseResponse(xp0,P2X4Inact2factor);
% 
% cf(10);prestimDoseResponses(P2X4Inact2factor);
% 
% % cf(11);plotIVMAction(P2X4Inact2factor);
% %     

continueChain(x0);
  
% % % 
% % %
% cf(14);plotNaiveResponse(pulse0IVM,P2X4Inact2factor);
% % % 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4Inact2factor);
% % 
% % % cf(55);plotPulseShort(pulse1IVM,P2X4Inact2factor);
% % %
% cf(16);plotNaiveResponse(pulse3IVM,P2X4Inact2factor);
% 
% % cf(56);plotPulseShort(pulse3IVM,P2X4Inact2factor);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4Inact2factor);
% % % 
% % % % cf(57);plotPulseShort(pulse10IVM,P2X4Inact2factor);
% % % % 
% cf(18);plotNaiveResponse(prol3IVM,P2X4Inact2factor);
% 
% % % % 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4Inact2factor);
% % % 
% cf(20);prestimDoseResponses(P2X4Inact2factor);
% % % % 
% % cf(21);plotIVMAction(P2X4Inact2factor);
% % % % % % % 
% cf(22);plotPulseDoseResponse(P2X4Inact2factor);

%  

save(['twalk_P2X4Inact2factor_var_sub' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami','beta')

return;

cf(54);plotPulseShortMeasure(pulse0IVM,P2X4Inact2factor);
cf(55);plotPulseShortMeasure(pulse1IVM,P2X4Inact2factor);
cf(56);plotPulseShortMeasure(pulse3IVM,P2X4Inact2factor);
cf(57);plotPulseShortMeasure(pulse10IVM,P2X4Inact2factor);

