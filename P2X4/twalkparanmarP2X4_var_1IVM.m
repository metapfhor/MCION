global globalStruct baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','L1','L2','L3','H0','H1','H2','H3','H4','H5','g1','g2','E1','E2','alpha','beta','J','V','n'};
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

% 

fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;


fparam('H0')=1;
fparam('H5')=1;

fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;


% fparam('H4')=1;
% 

fparam('alpha')=1;


fparam('beta')=1;

% fparam('V')=0;
fparam('epsilon')=1;
fparam('delta')=1;
fparam('n')=1;
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



pMax('n')=5;
pMin('n')=0.1;


[err1] = dataVarError(pulse0IVM,anmarP2X4);
[err2] = dataVarError(pulse1IVM,anmarP2X4);
[err3] = dataVarError(pulse3IVM,anmarP2X4);
[err4] = dataVarError(pulse10IVM,anmarP2X4);
[err5] = normProl3IVMError(anmarP2X4);
[err6] = normProl2noIVMError(anmarP2X4);

err7 = parPrestimDoseError30(anmarP2X4,anmarP2X4);


err8 = normIVMRecoveryError(anmarP2X4);

err9 = parIVMDoseResponseErr(anmarP2X4);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
val=fparam.values;
Npar=sum([val{:}]);


dilation = IVMkinetics(anmarP2X4);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'pulse0IVM',pulse0IVM,'pulse03IVM',pulse03IVM,'pulse1IVM',pulse1IVM,'pulse3IVM',pulse3IVM,'pulse6IVM',pulse6IVM,'pulse10IVM',pulse10IVM);
% glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);

globalStruct=glblStruct;

p = struct('globalStruct',glblStruct,'logPrior',@(x) 1, 'parLogLikelihood',{{err5,err6}}, 'serLogLikelihood',@(x) -(err7(x)+err9(x)),'bounds',bounds);

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

Niter=4000;
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
% cf(4);plotNaiveResponse(pulse0IVM,anmarP2X4);
% % 
% cf(51);plotNaiveResponse(pulse1IVM,anmarP2X4);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,anmarP2X4);
% % 
% cf(7);plotNaiveResponse(pulse10IVM,anmarP2X4);
% % 
% cf(8);plotNaiveResponse(prol3IVM,anmarP2X4);
% 
% cf(9);plotNaiveResponse(prol2noIVM,anmarP2X4);
% 
%  cf(10);chainPrestimDoseResponse(xp0,anmarP2X4);
% 
% cf(10);prestimDoseResponses(anmarP2X4);
% 
% cf(11);plotIVMAction(anmarP2X4);
%     

continueChain(x0);
% % % %  

% % % % % % 
cf(14);plotNaiveResponse(pulse0IVM,anmarP2X4);
% % 
cf(15);plotNaiveResponse(pulse1IVM,anmarP2X4);
% 
% % cf(55);plotPulseShort(pulse1IVM,anmarP2X4);
% %
cf(16);plotNaiveResponse(pulse3IVM,anmarP2X4);

% cf(56);plotPulseShort(pulse3IVM,anmarP2X4);
% 
cf(17);plotNaiveResponse(pulse10IVM,anmarP2X4);
% 
% % cf(57);plotPulseShort(pulse10IVM,anmarP2X4);
% % 
cf(18);plotNaiveResponse(prol3IVM,anmarP2X4);

chainPulseDoseResponse(x0,anmarP2X4);
% % 
% cf(19);plotNaiveResponse(prol2noIVM,anmarP2X4);
% 
cf(20);prestimDoseResponses(anmarP2X4);
% % % 
% cf(21);plotIVMAction(anmarP2X4);
% % % % % 

 

save(['twalk_anmarP2X4_var_all' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami','beta')

return;

cf(55);plotPulseShort(pulse1IVM,anmarP2X4);
cf(56);plotPulseShort(pulse3IVM,anmarP2X4);
cf(57);plotPulseShort(pulse10IVM,anmarP2X4);

