global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% % fparam('a1')=1;
fparam('g2')=1;
% fparam('E1')=0;
% fparam('E2')=0;
% % 
% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;
%  
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
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
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

[err1] = normDataErrorOmar(pulse0IVM,P2X4free);
[err2] = normDataErrorOmar(pulse1IVM,P2X4free);
[err3] = normDataErrorOmar(pulse3IVM,P2X4free);
[err4] = normDataErrorOmar(pulse10IVM,P2X4free);
[err5] = normDataErrorOmar(prol3IVMsmall,P2X4free);
[err6] = normDataErrorOmar(prol2noIVM,P2X4free);

err7 = normPrestimDoseError(P2X4free);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4free);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{@(x) 1000*err2(x),@(x) 1000*err7(x) }},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('L11= [1.88764e-04, 1.79497e-04], L12= [1.33573e-01, 9.60020e-02], L13= [2.07502e-02, 6.27524e-04], L14= [1.14445e+00, 2.36450e+00], L21= [2.58167e-03, 6.04592e-03], L22= [1.11716e-03, 1.13270e-03], L23= [1.65788e-02, 1.06409e-02], L24= [1.42265e+00, 6.26845e-01], L31= [4.94046e+00, 3.11459e+00], L32= [4.22810e+00, 5.96607e-01], L33= [1.05163e+00, 3.41460e+00], L34= [7.10265e-01, 8.12191e-01], L41= [2.68196e-03, 1.68015e-03], L42= [2.60166e-01, 2.25568e-01], L43= [5.74463e-03, 5.65435e-03], L44= [1.58975e-01, 9.62811e-02], L51= [7.16333e+00, 7.71952e+00], L52= [2.81809e+00, 3.34427e-01], L53= [9.02341e+00, 9.31638e+00], L54= [3.35512e+00, 4.00302e+00], L61= [9.43106e-03, 4.93278e-03], L62= [1.16426e-02, 8.28268e-03], L63= [2.61208e-02, 2.59504e-02], L64= [4.43403e-02, 4.84528e-02], g2= [8.68433e-08, 1.03873e-07], k10= [1.17569e+07, 1.89024e+07], k11= [8.74249e+01, 1.22450e+01], k12= [1.96176e+06, 8.38172e+05], k13= [4.35827e+03, 5.53868e+03], k14= [3.74934e+06, 5.10590e+06], k15= [2.36492e-02, 2.15923e-02], k16= [1.03337e+04, 2.71926e+04], k17= [3.10493e+01, 2.44355e+01], k18= [1.54599e+02, 1.09009e+02], k19= [9.11452e-03, 1.16505e-02], k20= [3.45252e+06, 5.35749e+06], k21= [2.06146e-01, 3.98374e-01], k22= [2.09249e+06, 9.71764e+05], k23= [4.56193e+03, 3.47415e+03], k24= [7.65210e+03, 8.46897e+03], k7= [1.34230e-01, 1.04660e-01], k8= [9.28695e+06, 5.65319e+06], k9= [1.61452e+00, 1.55003e+00]');


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

% cf(4);plotNaiveResponse(pulse0IVM,P2X4free);
% 
cf(51);plotNaiveResponse(pulse1IVM,P2X4free);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4free);
% 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4free);
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
% % 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4free);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4free);
% % 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free);
% 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4free);

  cf(20);prestimDoseResponses(P2X4free);



 

save(['twalk_P2X4free_preStim_and_1uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


