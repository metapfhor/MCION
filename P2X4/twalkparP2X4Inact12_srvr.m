global globalStruct baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;


load('twalk_P2X4Inact12_srvr5000_steps@20150525T205028.mat')

parpool(16);

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

% fparam('L10')=1;
fparam('L11')=1;
fparam('L12')=1;
fparam('L13')=1;
fparam('L14')=1;

fparam('W2')=1;
fparam('L21')=1;
fparam('L22')=1;
fparam('L23')=1;
fparam('L24')=1;
% 
% fparam('L30')=1;
fparam('L31')=1;
fparam('L32')=1;
fparam('L33')=1;
fparam('L34')=1;

% fparam('L40')=1;
fparam('L41')=1;
fparam('L42')=1;
fparam('L43')=1;
fparam('L44')=1;
% 
% fparam('L50')=1;
fparam('L51')=1;
fparam('L52')=1;
fparam('L53')=1;
fparam('L54')=1;

fparam('L60')=1;
fparam('L61')=1;
fparam('L62')=1;
fparam('L63')=1;
fparam('L64')=1;

fparam('H0')=1;
fparam('H5')=1;

fparam('H1')=1;
fparam('H2')=1;

% fparam('kd1')=1;

% fparam('ks1')=1;
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

pMax('W2')=0.1;



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
[err2] = dataVarError(pulse1IVM,P2X4Inact12);
[err3] = dataVarError(pulse3IVM,P2X4Inact12);
[err4] = dataVarError(pulse10IVM,P2X4Inact12);
[err5] = normProl3IVMError(P2X4Inact12);

s5 = prol3IVMErrorFuture2(P2X4Inact12);

err6 = normProl2noIVMError(P2X4Inactsub);

s6 = prol2noIVMErrorFuture(P2X4Inactsub);

err7 = parPrestimDoseError30(P2X4Inact12,P2X4Inactsub);

s7 = parPrestimDoseError30Future(P2X4Inact12,P2X4Inactsub);

err8 = normIVMRecoveryError(P2X4Inact12);

err9 = parIVMDoseResponseErr(P2X4Inact12);


s9 = parIVMDoseResponseErrFuture61Layer(P2X4Inact12);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkineticsOrig(P2X4Inact12);

p = struct('globalStruct',glblStruct,'logPrior',@(x) dilation(x),'futureLogLikelihood',{{s5,s6,s7,s9}}, 'parLogLikelihood',{{err5,err6}}, 'serLogLikelihood',@(x) -(err7(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end


while p.logPrior(xp0)==0 || sum(xp0<0)~=0 || sum(xp0==x0)~=0 || n
    xp0 = x0.*(1+0.14*(randn(size(x0))+0.01));
    n=0;
end
  
% [x0,xp0]=twalkStringParse('H0= [9.77314e-04, 1.02653e-03], H11= [2.45839e-04, 2.27519e-04], H3= [1.32485e-01, 1.37640e-01], H5= [1.16390e-03, 1.39285e-03], L10= [1.20701e-04, 1.00520e-04], L11= [1.61645e-03, 1.60095e-03], L12= [1.08516e-02, 1.05204e-02], L13= [8.07635e-01, 4.12831e-01], L14= [5.90065e-01, 5.17226e-01], L20= [9.22305e-01, 9.19484e-01], L21= [1.43293e-01, 2.70244e-01], L22= [1.93539e-01, 1.86544e-01], L23= [6.52763e-02, 6.48539e-02], L24= [4.49538e-01, 2.72511e-01], L30= [5.28413e-04, 4.38367e-04], L31= [4.15287e-02, 4.84217e-02], L32= [2.37633e-03, 8.09719e-03], L33= [4.65582e-03, 4.73207e-03], L34= [1.99866e-02, 1.41618e-02], L40= [4.83046e-02, 4.68393e-02], L41= [1.72535e-02, 2.22668e-02], L42= [4.70896e-01, 4.70142e-01], L43= [9.13707e-03, 8.92810e-03], L44= [2.36834e-01, 3.09495e-01], L50= [4.11595e-03, 2.36994e-03], L51= [2.86390e-02, 8.18233e-03], L52= [1.55782e-02, 4.07675e-02], L53= [2.49524e-02, 2.50000e-02], L54= [1.11338e-01, 1.27277e-01], L60= [1.20601e-01, 1.51727e-01], L61= [4.53417e-02, 1.62619e-01], L62= [3.58628e-01, 4.40913e-01], L63= [3.76601e-01, 1.05921e-01], L64= [9.64187e-02, 9.29798e-02], d1= [4.38252e+01, 4.63017e+01], d2= [2.68950e+05, 2.71561e+05], d3= [5.44064e+00, 5.67470e+00], d4= [1.47882e+06, 1.67846e+06], d5= [6.56116e+00, 6.57312e+00], d6= [3.15369e+06, 3.24123e+06], delta= [1.11647e-06, 8.88979e-07], epsilon= [1.83716e-06, 2.23202e-06], g1= [6.12919e-08, 5.63624e-08], g2= [6.88200e-08, 5.66745e-08], k1= [4.01118e+00, 4.00213e+00], k10= [1.19023e+07, 1.27232e+07], k11= [5.72969e+00, 9.78142e+00], k12= [1.63854e+07, 6.71291e+06], k13= [2.41757e-03, 3.39567e-03], k14= [4.26142e+06, 4.09472e+06], k15= [6.22316e-01, 6.33381e-01], k16= [1.08169e+07, 6.05936e+06], k17= [1.55899e+00, 1.38889e+00], k18= [9.46113e+06, 1.38847e+07], k19= [7.32865e-03, 7.35956e-03], k2= [2.72022e+06, 2.28942e+06], k20= [6.68547e+06, 8.09468e+06], k22= [4.78038e+06, 4.78026e+06], k24= [2.01555e+06, 2.84828e+06], k3= [5.93287e+00, 6.00174e+00], k4= [3.98366e+06, 3.47941e+06], k5= [4.16065e+01, 4.30526e+01], k6= [2.86618e+05, 2.76550e+05], k7= [2.98050e-02, 1.32154e-02], k8= [3.82698e+06, 4.51042e+06], k9= [5.76809e+00, 4.43841e+00], kd1= [1.88525e-01, 2.04514e-01], mu= [3.53821e-06, 3.24334e-06]');


Niter=5000;

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
% cf(3);tempConvergence(beta,lt)
    
%     
% continueChain(xp0);
% 
% cf(4);plotNaiveResponse(pulse0IVM,P2X4Inact12);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4Inact12);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4Inact12);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4Inact12);
% % 
% cf(8);plotNaiveResponse(prol3IVM,P2X4Inact12);
% 
% cf(9);plotNaiveResponse(prol2noIVM,P2X4Inact12);
% 
%  cf(10);chainPrestimDoseResponse(xp0,P2X4Inact12);
% 
% cf(10);prestimDoseResponses(P2X4Inact12);
% 
% % cf(11);plotIVMAction(P2X4Inact12);
% %     

continueChain(x0);
  
% 
% %
% cf(14);plotNaiveResponse(pulse0IVM,P2X4Inact12);
% % % 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4Inact12);
% % 
% % % cf(55);plotPulseShort(pulse1IVM,P2X4Inact12);
% % %
% cf(16);plotNaiveResponse(pulse3IVM,P2X4Inact12);
% 
% % cf(56);plotPulseShort(pulse3IVM,P2X4Inact12);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4Inact12);
% % % 
% % % % cf(57);plotPulseShort(pulse10IVM,P2X4Inact12);
% % % % 
% cf(18);plotNaiveResponse(prol3IVM,P2X4Inact12);
% 
% % % 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4Inact12);
% % % 
% cf(20);prestimDoseResponses(P2X4Inact12);
% % % % 
% % cf(21);plotIVMAction(P2X4Inact12);
% % % % % % % 
% cf(22);plotPulseDoseResponse(P2X4Inact12);

 

save(['twalk_P2X4Inact12_srvr' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami','beta')



