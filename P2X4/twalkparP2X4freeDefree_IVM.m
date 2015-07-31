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
% %  
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
%  
fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;



% 
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
fparam('H11')=1;
fparam('H12')=1;
fparam('H13')=1;
fparam('kd')=1;
fparam('ks')=1;
fparam('kd1')=1;
fparam('ks1')=1;
fparam('kd2')=1;
fparam('ks2')=1;
fparam('kd3')=1;
fparam('ks3')=1;
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

[err1] = dataVarError(pulse0IVM,P2X4freeDefree);
[err2] = dataVarError(pulse1IVM,P2X4freeDefree);
[err3] = dataVarError(pulse3IVM,P2X4freeDefree);
[err4] = dataVarError(pulse10IVM,P2X4freeDefree);
[err41] = dataVarError(pulse10s,P2X4freeDefree);
[err5] = dataVarError(prol3IVM,P2X4freeDefree);
[err6] = dataVarError(prol2noIVM,P2X4freeDefree);

err7 = normPrestimDoseError(P2X4freeDefree);

err8 = normIVMRecoveryError(P2X4freeDefree);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4freeDefree);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) 1, 'logLikelihood',{{err41}},'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
 
% [x0,xp0]=twalkStringParse('H11= [3.20666e+05, 2.60378e+05], H12= [2.38408e+06, 6.76024e+06], H13= [3.89616e+04, 6.27336e+04], H3= [8.93304e-04, 1.07718e-03], L11= [6.17136e-07, 7.60623e-07], L12= [6.68412e-03, 8.40768e-02], L13= [7.05999e+00, 3.99259e+00], L14= [2.82192e+00, 4.09037e-01], L21= [4.78763e-03, 4.57330e-03], L22= [1.40764e+00, 1.75304e+00], L23= [3.43844e-01, 4.09495e-01], L24= [1.38791e-03, 6.45584e-01], L31= [1.41990e-02, 2.90416e-02], L32= [6.60414e+00, 6.00990e+00], L33= [1.07083e-03, 2.59787e-04], L34= [6.70107e-02, 4.06217e-02], L41= [1.00469e-05, 1.03199e-05], L42= [6.80955e-02, 2.27471e-02], L43= [1.04617e-03, 1.11243e-03], L44= [2.74774e-02, 5.97000e-02], L51= [2.80292e-05, 7.38647e-05], L52= [5.29781e+00, 1.28491e+00], L53= [3.37788e-01, 3.84866e-01], L54= [1.37327e+00, 1.05700e+00], L61= [6.44388e+00, 6.87879e+00], L62= [4.20761e-03, 2.12873e-01], L63= [2.25555e+00, 1.64236e+00], L64= [5.69526e-01, 7.61424e-01], g2= [2.92395e-08, 2.45132e-08], k10= [2.06110e+07, 5.06693e+07], k11= [8.63177e-01, 7.37818e-01], k12= [3.64418e+09, 3.60746e+09], k13= [1.36653e+02, 1.03066e+02], k14= [7.11753e+05, 8.88267e+05], k15= [7.05634e-01, 4.82278e-01], k16= [1.38833e+07, 4.32501e+06], k17= [1.36198e+04, 8.24079e+03], k18= [9.54067e+05, 4.95466e+06], k19= [2.45672e-03, 1.98032e-03], k20= [6.45246e+06, 4.11510e+06], k21= [2.44533e-02, 1.39283e-03], k22= [1.39295e+10, 1.32383e+10], k23= [1.00563e+04, 7.90378e+03], k24= [6.91905e+06, 7.81942e+06], k7= [9.24566e-04, 4.65886e-03], k8= [7.11895e+06, 2.54009e+07], k9= [3.10362e-01, 4.11746e-01], kd1= [1.51348e-01, 7.27862e-02], kd2= [1.44280e-01, 1.48263e-01], kd3= [8.34076e-02, 7.91153e-02], ks1= [1.37139e+04, 6.33391e+04], ks2= [1.66938e+06, 1.49910e+06], ks3= [1.00000e+07, 5.63990e+06]');


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

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

cf(2);chainDistributions(unravelChain(xxp));


continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,P2X4freeDefree);
% 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4freeDefree);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4freeDefree);

cf(7);plotNaiveResponse(pulse10IVM,P2X4freeDefree);

% cf(8);plotNaiveResponse(prol3IVM,P2X4freeDefree);

% cf(9);plotNaiveResponse(prol2noIVM,P2X4freeDefree);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4freeDefree);

% cf(10);prestimDoseResponses(P2X4freeDefree);
% 
% cf(11);plotIVMAction(P2X4freeDefree);

continueChain(x0);


cf(14);plotNaiveResponse(pulse0IVM,P2X4freeDefree);

cf(15);plotNaiveResponse(pulse1IVM,P2X4freeDefree);

cf(55);plotPulseShort(pulse1IVM,P2X4freeDefree);
 cf(56);plotPulseShort(pulse10IVM,P2X4freeDefree);
% 
cf(16);plotNaiveResponse(pulse3IVM,P2X4freeDefree);
% 
cf(17);plotNaiveResponse(pulse10IVM,P2X4freeDefree);
% 
cf(18);plotNaiveResponse(prol3IVM,P2X4freeDefree);

cf(19);plotNaiveResponse(prol2noIVM,P2X4freeDefree);

cf(20);prestimDoseResponses(P2X4freeDefree);

cf(21);plotIVMAction(P2X4freeDefree);


save(['twalk_P2X4freeDefree_IVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


