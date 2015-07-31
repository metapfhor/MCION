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

fparam('Gmin')=1;
fparam('Hmin')=1;
fparam('rmin')=1;
% 

fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;


fparam('H0')=1;
fparam('H5')=1;
fparam('H6')=1;
fparam('H7')=1;

fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;


% fparam('H4')=1;
% 

fparam('alpha')=1;


fparam('beta')=1;
fparam('gamma')=1;

% fparam('V')=0;

fparam('n1')=1;
fparam('n2')=1;
% 
% fparam('n1')=1;
% fparam('n2')=1;
% fparam('n3')=1;

fparam('A')=0;
fparam('J')=0;

vals=fparam.values;
Npar=sum([vals{:}]);

pMin('alpha')=0.01;
pMax('alpha')=100;

pMin('beta')=0.1e-6;
pMax('beta')=15e-6;






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
pMin('n1')=0.1;

pMax('n2')=5;
pMin('n2')=0.1;


glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'pulse0IVM',pulse0IVM,'pulse03IVM',pulse03IVM,'pulse1IVM',pulse1IVM,'pulse3IVM',pulse3IVM,'pulse6IVM',pulse6IVM,'pulse10IVM',pulse10IVM,'prol2noIVM',prol2noIVM,'prol3IVM',prol3IVM);
% glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);
glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'pulse0IVMs',pulse0IVMs,'pulse03IVMs',pulse03IVMs,'pulse1IVMs',pulse1IVMs,'pulse3IVMs',pulse3IVMs,'pulse6IVMs',pulse6IVMs,'pulse10IVMs',pulse10IVMs,'prol2noIVMs',prol2noIVMs,'prol3IVMs',prol3IVMs);


globalStruct=glblStruct;


[err1] = dataVarError(pulse0IVM,P2X4Inactsub);
[err2] = dataVarError(pulse1IVM,anmarP2X4tri);
[err3] = dataVarError(pulse3IVM,anmarP2X4tri);
[err4] = dataVarError(pulse10IVM,anmarP2X4tri);
[err5] = normProl3IVMErrorLite(anmarP2X4tri);

s5 = prol3IVMErrorFutureLite(anmarP2X4tri);

err6 = normProl2noIVMError(P2X4Inactsub);

s6 = prol2noIVMErrorFuture(P2X4Inactsub);

err7 = parPrestimDoseError30(anmarP2X4tri,P2X4Inactsub);

s7 = parPrestimDoseError30Future(anmarP2X4tri,P2X4Inactsub);

err8 = normIVMRecoveryError(anmarP2X4tri);

err9 = parIVMDoseResponseErr(anmarP2X4tri);

s9 = parIVMDoseResponseErrFuture(anmarP2X4tri);

s9 = parIVMDoseResponseErrFuture3(anmarP2X4tri);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(anmarP2X4tri);

p = struct('globalStruct',glblStruct,'logPrior',@(x) dilation(x),'futureLogLikelihood',{{s5,s6,s7,s9}}, 'parLogLikelihood',{{err5,err6}}, 'serLogLikelihood',@(x) -(err7(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end

while p.logPrior(xp0)==0 || sum(xp0<0)~=0 || sum(xp0==x0)~=0
    disp('foo');
    xp0 = x0.*(1+0.14*(randn(size(x0))+0.01));
end

% [x0,xp0]=twalkStringParse('Gmin= [6.25971e-02, 9.67697e-02], H0= [2.28312e-03, 4.32251e-03], H1= [4.87298e-03, 1.50411e-03], H2= [1.72429e-01, 2.18845e-01], H3= [1.40445e-02, 1.30864e-02], H4= [7.00000e-02, 5.62705e-03], H5= [9.98552e-04, 9.40697e-04], H6= [2.95724e-04, 3.51279e-04], H7= [1.00000e-04, 2.49457e-04], Hmin= [1.16355e-01, 8.45448e-02], L1= [2.32682e-05, 4.53796e-05], L2= [1.23192e-02, 1.82140e-02], L3= [1.06146e-01, 1.17918e-01], alpha= [2.02486e+00, 2.01649e+00], beta= [3.38084e-07, 3.72387e-07], g1= [5.08954e-08, 4.92812e-08], g2= [6.34978e-08, 5.99739e-08], gamma= [1.04019e-06, 5.72973e-07], k1= [4.34383e+00, 4.04358e+00], k2= [9.26715e+06, 3.81984e+06], k3= [6.19599e+00, 6.66001e+00], k4= [4.73027e+06, 3.58177e+06], k5= [2.96024e+00, 2.15648e+00], k6= [8.02349e+05, 1.84469e+07], n1= [2.12474e+00, 2.09783e+00], n2= [2.98438e+00, 1.61438e+00], rmin= [1.41984e-01, 9.24316e-03]');

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
t = now;
[xxp,lt,beta,acc] = parAPTtwalkreflect('futureLogTarget',Niter,x0,xp0,p,3);
Total_Time=[ num2str((now-t)*3600*24) ' seconds']
[x0,xp0] = twalkEnds(squeeze(xxp(:,1,:)));
% [x3,xp3] = twalkEnds(squeeze(xxp(:,3,:)));  

% cf(2);chainDistributions(unravelChain(xxp));
cf(3);tempConvergence(beta,lt)
    
%     
% continueChain(xp0);
% 
% cf(4);plotNaiveResponse(pulse0IVM,anmarP2X4tri);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,anmarP2X4tri);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,anmarP2X4tri);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,anmarP2X4tri);
% % 
% cf(8);plotNaiveResponse(prol3IVM,anmarP2X4tri);
% 
% cf(9);plotNaiveResponse(prol2noIVM,anmarP2X4tri);
% 
%  cf(10);chainPrestimDoseResponse(xp0,anmarP2X4tri);
% 
% cf(10);prestimDoseResponses(anmarP2X4tri);
% 
% % cf(11);plotIVMAction(anmarP2X4tri);
% %     

continueChain(x0);
% % % %  

% % % % % % % 
% cf(14);plotNaiveResponse(pulse0IVM,anmarP2X4tri);
% % % 
% cf(15);plotNaiveResponse(pulse1IVM,anmarP2X4tri);
% % 
% % % cf(55);plotPulseShort(pulse1IVM,anmarP2X4tri);
% % %
% cf(16);plotNaiveResponse(pulse3IVM,anmarP2X4tri);
% 
% % cf(56);plotPulseShort(pulse3IVM,anmarP2X4tri);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,anmarP2X4tri);
% % 
% % % cf(57);plotPulseShort(pulse10IVM,anmarP2X4tri);
% % % 
% cf(18);plotNaiveResponse(prol3IVM,anmarP2X4tri);
% 
% % % 
% cf(19);plotNaiveResponse(prol2noIVM,anmarP2X4tri);
% % 
% cf(20);prestimDoseResponses(anmarP2X4tri);
% % % 
% cf(21);plotIVMAction(anmarP2X4tri);
% % % % % % 
% cf(22);plotPulseDoseResponse(anmarP2X4tri);

 

save(['twalk_anmarP2X4tri_var_all' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami','beta')

return;

cf(54);plotPulseShortMeasure(pulse0IVM,anmarP2X4tri);
cf(55);plotPulseShortMeasure(pulse1IVM,anmarP2X4tri);
cf(56);plotPulseShortMeasure(pulse3IVM,anmarP2X4tri);
cf(57);plotPulseShortMeasure(pulse10IVM,anmarP2X4tri);

