global globalStruct baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

 load('twalk_P2X4Inact2_srvr_5000_steps@20150708T025904.mat')



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

fparam('k13')=1;
fparam('k14')=1;
fparam('k15')=1;
fparam('k16')=1;
fparam('k17')=1;
fparam('k18')=1;

fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;

fparam('W2')=1;

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

fparam('H0')=1;
fparam('H5')=1;





fparam('kd1')=1;

fparam('ks1')=1;
fparam('H3')=1;
fparam('H3D')=1;


% 
% fparam('rho1')=1;
% fparam('rho2')=1;
% fparam('rho3')=1;



fparam('kd1')=1;
fparam('kd2')=1;
fparam('kd3')=1;
fparam('kd4')=1;


fparam('ks1')=1;
fparam('ks2')=1;
fparam('ks3')=1;
fparam('ks4')=1;


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



pMin('r1')=1;
pMin('r2')=0.1;
pMin('r3')=0.1;

pMax('r1')=5;
pMax('r2')=5;
pMax('r3')=5;

pMax('gamma1')=10;
pMax('gamma2')=10;
pMax('gamma3')=100;

pMax('W2')=0.1;

pMax('rho1')=10;
pMax('rho2')=10;
pMax('rho3')=10;

pMin('alpha1')=2;
pMax('alpha1')=1000;

pMin('alpha2')=2;
pMax('alpha2')=1000;



pMin('alpha3')=2;
pMax('alpha3')=1000;



pMax('H4')=0.1;

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

pMax('ks2')=1;
pMax('ks3')=1;
pMax('ks4')=5;

pMin('kd4')=0.1;
pMin('ks4')=0.01;
pMax('ks4')=1;

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
[err2] = dataVarError(pulse1IVM,P2X4Inact2);
[err3] = dataVarError(pulse3IVM,P2X4Inact2);
[err4] = dataVarError(pulse10IVM,P2X4Inact2);
[err5] = normProl3IVMError(P2X4Inact2);

s5 = prol3IVMErrorFuture3(P2X4Inact2);

err6 = normProl2noIVMError(P2X4Inactsub);

s6 = prol2noIVMErrorFuture(P2X4Inact2);

err7 = parPrestimDoseError30(P2X4Inact2,P2X4Inactsub);

s7 = parPrestimDoseError30Future(P2X4Inact2,P2X4Inact2);

err8 = normIVMRecoveryError(P2X4Inact2);

err9 = parIVMDoseResponseErr(P2X4Inact2);

s9 = parIVMDoseResponseErrFuture(P2X4Inact2);

s9 = parIVMDoseResponseErrFuture6(P2X4Inact2);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();

[x0,xp0]=twalkEnds(xxp);
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkineticsFactor22(P2X4Inact2);

invT=beta;

p = struct('d_log_T',(log(1./invT(2:end,end)-1./invT(1:end-1,end)))','globalStruct',glblStruct,'logPrior',@(x) dilation(x),'futureLogLikelihood',{{s5,s6,s7,s9}}, 'parLogLikelihood',{{err5,err6}}, 'serLogLikelihood',@(x) -(err7(x)+err9(x)),'bounds',bounds);

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

% [x0,xp0]=twalkStringParse('H0= [3.49792e-03, 1.66693e-03], H11= [5.39083e-04, 5.23832e-04], H12= [7.83469e-01, 9.99987e-01], H13= [4.66728e-02, 5.86070e-02], H14= [8.33082e-02, 4.35364e-01], H3= [1.48366e-03, 2.85421e-03], H5= [1.47214e-03, 8.68740e-04], L1= [2.03264e-02, 2.33462e-02], L2= [2.61824e-02, 3.89289e-02], L3= [1.12182e-02, 1.26285e-02], L4= [5.19295e-01, 4.35366e-01], L5= [7.92124e-02, 7.72423e-02], L6= [5.02457e-02, 5.58882e-02], W1= [1.57430e-01, 1.65505e-01], W2= [6.70116e-01, 8.74858e-01], delta= [7.74467e-07, 8.18529e-07], epsilon= [3.20292e-06, 2.74580e-06], g1= [5.63117e-08, 5.46757e-08], g2= [6.49703e-08, 5.71890e-08], k1= [9.75191e-01, 9.53867e-01], k2= [3.35459e+06, 3.54123e+06], k3= [5.81440e+00, 9.08016e+00], k4= [2.94903e+06, 3.23240e+06], k5= [3.13215e+01, 1.40576e+01], k6= [2.11256e+06, 3.63646e+06], kd1= [1.68991e-01, 1.45938e-01], kd2= [3.15118e-01, 3.54043e-01], kd3= [1.67698e-01, 1.86037e-01], kd4= [1.23100e-01, 1.21370e-01], ks1= [3.15877e-07, 2.93284e-07], ks2= [2.56581e-02, 2.12780e-02], ks3= [3.45634e-01, 3.90280e-01], ks4= [7.64326e-01, 6.92424e-01], mu= [9.07814e-06, 9.21245e-06], r1= [6.90542e+00, 6.08467e+00], r2= [1.84644e+00, 1.80400e+00], r3= [2.64584e+00, 2.74650e+00], v1= [2.64490e-01, 4.05498e-01], v2= [4.63912e-02, 6.85908e-02], v3= [3.14274e-03, 3.12893e-03]');


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

disp([' x0 has logTarget = ' num2str(futureLogTarget(x0,p))])
disp([' xp0 has logTarget = ' num2str(futureLogTarget(xp0,p))])

[xxp,lt,beta,acc] = parAPTtwalkreflect('futureLogTarget',Niter,x0,xp0,p,3);

Total_Time=[ num2str((now-t)*3600*24) ' seconds']



[x0,xp0] = twalkEnds(squeeze(xxp(:,1,:)));


continueChain(x0);
  
disp(['Final Parameters:', tchainString(x0,xp0)])

save(['twalk_P2X4Inact2_srvr_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami','beta')

poolobj=gcp('nocreate');
delete(poolobj);