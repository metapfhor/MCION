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
%  
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
%  
fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;
% 
% 
% 
% 
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
fparam('H21')=1;
fparam('H22')=1;
fparam('H23')=1;
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

pMax('L31')=1;
pMax('L32')=10;
pMax('L33')=10;
pMax('L34')=10;

pMax('L51')=10;
pMax('L52')=10;
pMax('L53')=10;
pMax('L54')=10;


pMax('k6')=1e6;

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

pMax('g2')=7e-7;

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

[err1] = dataVarError(pulse0IVM,P2X4free2);
[err2] = dataVarError(pulse1IVM,P2X4free2);
[err3] = dataVarError(pulse3IVM,P2X4free2);
[err4] = dataVarError(pulse10IVM,P2X4free2);
[err5] = dataVarError(prol3IVMsmall,P2X4free2);
[err6] = dataVarError(prol2noIVM,P2X4free2);

err7 = normPrestimDoseError(P2X4free2);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4free2);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{@(x) 10*err1(x),err2,err3}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H1= [2.73468e-03, 1.99645e-04], H21= [1.52980e-01, 4.71628e-02], H22= [1.87461e-01, 7.69813e-02], H23= [3.06109e-01, 3.90635e-01], H3= [5.38832e-04, 5.70741e-04], H4= [9.97648e-06, 6.60603e-06], L11= [1.09337e-07, 1.48405e-07], L12= [9.17883e-01, 3.33499e-01], L13= [6.50061e-02, 3.55624e-01], L14= [8.39908e-02, 8.24394e-02], L21= [1.88598e-03, 2.63723e-03], L22= [6.85293e-03, 1.59360e-02], L23= [2.24746e-04, 2.47163e-04], L24= [2.80644e-03, 1.83948e-03], L31= [1.55184e-03, 9.00000e-02], L32= [3.90346e-01, 2.91356e-01], L33= [3.65532e-02, 1.72488e-02], L34= [2.20165e+00, 4.91220e+00], L41= [1.30143e-07, 1.64142e-07], L42= [1.79822e-01, 3.69716e-01], L43= [1.20920e+00, 1.20139e+00], L44= [1.84154e-01, 1.42770e-01], L51= [8.96845e-03, 8.72058e-03], L52= [7.42942e-01, 1.29421e+00], L53= [1.00900e-01, 8.04242e-02], L54= [3.91658e-01, 4.43719e-01], L61= [1.20020e+00, 5.29049e-01], L62= [2.57951e-02, 2.47994e-02], L63= [2.89028e-01, 2.70235e-01], L64= [3.07602e-03, 2.72461e-03], g1= [2.45027e-08, 1.95316e-08], g2= [4.57115e-07, 2.89109e-07], k1= [2.29242e+00, 1.29917e+00], k10= [4.36521e+06, 3.09190e+06], k11= [2.54471e+03, 6.27855e+02], k12= [2.65349e+08, 4.05813e+08], k13= [6.09861e+01, 1.83016e+02], k14= [2.32109e+06, 3.07827e+06], k15= [3.17730e-01, 3.09070e-01], k16= [7.60233e+07, 6.58705e+07], k17= [5.02089e-03, 5.51147e-03], k18= [4.17357e+05, 2.18946e+05], k19= [1.02684e-05, 1.28956e-05], k2= [2.50915e+06, 1.60513e+06], k20= [8.73525e+07, 8.53533e+07], k21= [2.67681e-03, 2.20658e-03], k22= [2.05834e+06, 5.23797e+06], k23= [2.00771e+01, 1.39600e+00], k24= [7.72523e+05, 9.43108e+05], k3= [3.35897e+00, 7.29571e+00], k4= [9.15347e+06, 1.37253e+07], k5= [6.20458e+01, 6.46776e+01], k6= [2.66424e+05, 4.22173e+05], k7= [5.58725e+00, 5.27768e+00], k8= [3.46892e+06, 1.10131e+06], k9= [1.07855e+00, 5.15858e-01]');


Niter=1000;
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

cf(4);plotNaiveResponse(pulse0IVM,P2X4free2);
% 
cf(51);plotNaiveResponse(pulse1IVM,P2X4free2);
% 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4free2);
% 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4free2);
% 
% cf(8);plotNaiveResponse(prol3IVMsmall,P2X4free2);

% cf(9);plotNaiveResponse(prol2noIVM,P2X4free2);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4free2);

% cf(10);prestimDoseResponses(P2X4free2);
    
continueChain(x0);
 
% 
cf(14);plotNaiveResponse(pulse0IVM,P2X4free2);
% 
cf(15);plotNaiveResponse(pulse1IVM,P2X4free2);
% 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4free2);
% 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4free2);
% 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free2);
% 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4free2);

% cf(20);prestimDoseResponses(P2X4free2);



 

save(['twalk_P2X4free2_var_noIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


