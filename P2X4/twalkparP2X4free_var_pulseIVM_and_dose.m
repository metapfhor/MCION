global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;
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

[err1] = dataVarError(pulse0IVM,P2X4sub);
[err2] = dataVarError(pulse1IVM,P2X4free);
[err3] = dataVarError(pulse3IVM,P2X4free);
[err4] = dataVarError(pulse10IVM,P2X4free);
[err5] = dataVarError(prol3IVMsmall,P2X4free);
[err6] = dataVarError(prol2noIVM,P2X4sub);

err7 = normPrestimDoseError(P2X4free);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4free);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err2,err3,err4,@(x) err7(x)/10}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H1= [6.90399e-04, 8.38966e-04], H2= [2.32560e-01, 1.39015e-01], H3= [1.75614e-02, 1.26576e-02], H4= [7.27872e-06, 6.24798e-06], L11= [6.66819e-03, 2.02804e+00], L12= [7.78168e-01, 5.88195e-01], L13= [3.98931e-02, 5.09887e-02], L14= [7.71677e-01, 2.74636e+00], L21= [4.71834e-02, 1.80800e-01], L22= [1.29274e-02, 1.24174e-02], L23= [4.53074e-04, 4.02435e-04], L24= [1.54918e-2, 2.80208e-03], L31= [1.45552e+00, 6.31534e+00], L32= [5.16890e-01, 3.96210e-01], L33= [9.42238e-02, 1.48609e-01], L34= [5.94604e+00, 5.49796e+00], L41= [1.84659e-03, 2.18524e-03], L42= [6.33052e-02, 1.48676e-01], L43= [2.02804e-01, 2.38571e-01], L44= [2.08600e+01, 2.79975e-03], L51= [1.10115e-03, 5.08896e-03], L52= [6.57742e-01, 9.50086e+00], L53= [1.25354e-01, 1.64562e-01], L54= [7.06581e-01, 5.89236e-01], L61= [2.40603e-01, 3.20357e-01], L62= [1.85512e-02, 1.14864e-02], L63= [1.88026e-01, 2.28424e-01], L64= [1.06187e-02, 8.41169e-03], g1= [4.03159e-08, 1.58399e-08], g2= [2.24628e-07, 2.52321e-07], k1= [2.43215e-01, 1.10751e-01], k10= [4.33765e+05, 1.20757e+07], k11= [1.84041e+04, 1.44813e+02], k12= [6.38225e+05, 1.36459e+06], k13= [1.34123e+07, 1.24480e+06], k14= [4.25593e+06, 4.15204e+06], k15= [2.34084e+00, 4.17726e+00], k16= [2.06847e+06, 3.95242e+06], k17= [7.69910e+02, 7.21838e+02], k18= [9.15065e+02, 1.35755e+03], k19= [5.76742e-05, 6.32746e-05], k2= [5.20077e+06, 3.03958e+06], k20= [9.61647e+07, 7.93632e+07], k21= [2.62928e-03, 2.26416e-03], k22= [3.75372e+06, 3.43294e+06], k23= [2.26719e+01, 2.20218e+01], k24= [2.70438e+05, 4.82089e+04], k3= [1.47951e+01, 7.19042e+00], k4= [1.38244e+07, 1.06021e+07], k5= [5.39045e+02, 5.39766e+02], k6= [1.60705e+08, 1.18673e+08], k7= [2.34438e-01, 1.31767e-01], k8= [1.81974e+05, 3.40892e+05], k9= [1.32949e-01, 1.85196e-01]');


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
    

cf(2);chainDistributions(unravelChain(xxp));
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,P2X4free);
% 
cf(51);plotNaiveResponse(pulse1IVM,P2X4free);
% 
cf(6);plotNaiveResponse(pulse3IVM,P2X4free);
% 
cf(7);plotNaiveResponse(pulse10IVM,P2X4free);
% 
% cf(8);plotNaiveResponse(prol3IVMsmall,P2X4free);

% cf(9);plotNaiveResponse(prol2noIVM,P2X4free);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4free);

cf(10);prestimDoseResponses(P2X4free);
    
continueChain(x0);
 
% 
% cf(14);plotNaiveResponse(pulse0IVM,P2X4free);
% 
cf(15);plotNaiveResponse(pulse1IVM,P2X4free);
% 
cf(16);plotNaiveResponse(pulse3IVM,P2X4free);
% 
cf(17);plotNaiveResponse(pulse10IVM,P2X4free);
% 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free);
% 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4free);

cf(20);prestimDoseResponses(P2X4free);



 

save(['twalk_P2X4free_var_noIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


