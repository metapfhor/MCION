global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H1','H11','H12','H13','kd','ks','kd1','ks1','kd2','ks2','kd3','ks3','H3','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','beta','gamma','rho1','rho2','rho3','A','J','V'};
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
% %  
% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;
% 
% fparam('k13')=1;
% fparam('k14')=1;
% fparam('k15')=1;
% fparam('k16')=1;
% fparam('k17')=1;
% fparam('k18')=1;
% %  
% fparam('k19')=1;
% fparam('k20')=1;
% fparam('k21')=1;
% fparam('k22')=1;
% fparam('k23')=1;
% fparam('k24')=1;



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
fparam('H1')=1;
% fparam('H11')=1;
% fparam('H12')=1;
% fparam('H13')=1;
fparam('kd')=1;
fparam('ks')=1;
% % fparam('kd1')=1;
% % fparam('ks1')=1;
% % fparam('kd2')=1;
% % fparam('ks2')=1;
% % fparam('kd3')=1;
% % fparam('ks3')=1;
% fparam('alpha')=1;
% fparam('beta')=1;
% fparam('gamma')=1;
fparam('H3')=1;
% fparam('H4')=1;
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

pMax('L11')=10;
pMax('L12')=10;
pMax('L13')=10;
pMax('L14')=10;

pMax('L31')=10;
pMax('L32')=10;
pMax('L33')=10;
pMax('L34')=10;

pMax('L51')=10;
pMax('L52')=10;
pMax('L53')=10;
pMax('L54')=10;




pMax('L1')=50;
pMax('L4')=10;
pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=5e-6;
pMin('epsilon')=1e-6;
pMax('delta')=1e-6;
pMin('delta')=0;
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

[err1] = dataVarError(pulse0IVM,P2X4freeDe);
[err2] = dataVarError(pulse1IVM,P2X4freeDe);
[err3] = dataVarError(pulse3IVM,P2X4freeDe);
[err4] = dataVarError(pulse10IVM,P2X4freeDe);
[err5] = dataVarError(prol3IVM,P2X4freeDe);
[err6] = dataVarError(prol2noIVM,P2X4freeDe);

err7 = normPrestimDoseError(P2X4freeDe);

err8 = normIVMRecoveryError(P2X4freeDe);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4freeDe);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) 1, 'logLikelihood',{{@(x) 10*err1(x),err6}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H1= [1.53204e-03, 1.34046e-03], H3= [5.89240e-03, 4.28106e-03], g1= [3.81028e-08, 3.26891e-08], k1= [3.79242e+00, 1.77106e+00], k2= [4.04269e+05, 2.81442e+05], k3= [4.75812e+00, 4.49733e+00], k4= [2.79870e+08, 4.04364e+08], k5= [2.56175e+01, 3.66664e+01], k6= [4.07603e+07, 4.52861e+07], kd= [3.27920e-01, 2.27389e-01], ks= [9.04744e-06, 1.41154e-05]');


Niter=300;
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

cf(4);plotNaiveResponse(pulse0IVM,P2X4freeDe);
% 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4freeDe);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4freeDe);
% 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4freeDe);
% 
% cf(8);plotNaiveResponse(prol3IVM,P2X4freeDe);

cf(9);plotNaiveResponse(prol2noIVM,P2X4freeDe);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4freeDe);

% cf(10);prestimDoseResponses(P2X4freeDe);
% 
% cf(11);plotIVMAction(P2X4freeDe);

continueChain(x0);

% 
cf(14);plotNaiveResponse(pulse0IVM,P2X4freeDe);
% 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4freeDe);
% % 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4freeDe);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4freeDe);
% % 
% cf(18);plotNaiveResponse(prol3IVM,P2X4freeDe);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4freeDe);
% 
% cf(20);prestimDoseResponses(P2X4freeDe);
% 
% cf(21);plotIVMAction(P2X4freeDe);


save(['twalk_P2X4freeDe_preStim_and_3_and_1uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


