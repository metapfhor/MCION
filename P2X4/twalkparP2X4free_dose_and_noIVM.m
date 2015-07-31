global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{@(x) 1000*err1(x),@(x) 100*err6(x),@(x) 1000*err7(x) }},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H1= [4.25162e-03, 6.39362e-03], H2= [2.74184e-01, 3.09678e-01], H3= [1.72445e-01, 2.53989e-01], H4= [2.80416e-02, 3.68274e-02], L11= [1.93478e-04, 2.24834e-04], L12= [4.51107e-01, 7.08453e-01], L13= [3.02578e-02, 1.03069e-02], L14= [1.31382e+00, 1.84849e+00], L21= [1.26340e-02, 7.44804e-03], L22= [7.54424e-03, 1.26376e-02], L23= [2.33774e-01, 1.97733e-01], L24= [1.75038e+00, 2.46940e+00], L31= [3.29419e-01, 9.28357e-02], L32= [1.50982e+00, 1.82041e+00], L33= [5.33590e-01, 5.97876e-01], L34= [7.66467e-01, 9.94703e-01], L41= [9.59190e-03, 1.58794e-02], L42= [4.19831e-03, 1.44252e-03], L43= [1.29217e-02, 1.06906e-02], L44= [2.28480e-01, 2.34011e-01], L51= [8.22764e-01, 4.15188e-01], L52= [4.08893e-03, 9.35916e-03], L53= [8.06823e-02, 6.10564e-02], L54= [2.44491e-01, 2.13214e-01], L61= [7.79705e-01, 2.54699e-01], L62= [5.24046e-03, 6.87562e-03], L63= [1.85310e-02, 6.53864e-01], L64= [4.24263e-02, 3.89796e-02], g1= [3.55661e-08, 2.36618e-08], g2= [8.49769e-08, 5.52592e-08], k1= [1.15816e-01, 9.81015e-02], k10= [4.26313e+07, 6.29756e+07], k11= [6.82667e+01, 2.92032e+01], k12= [1.06336e+07, 9.56758e+06], k13= [4.80974e+03, 2.20282e+03], k14= [8.02127e+05, 2.78282e+06], k15= [1.81164e-02, 5.92732e-04], k16= [1.36625e+04, 6.22496e+03], k17= [8.26464e+01, 9.38515e+01], k18= [1.25547e+04, 2.03336e+04], k19= [2.60571e-03, 2.44262e-03], k2= [3.63843e+05, 5.68213e+05], k20= [1.74978e+06, 1.41910e+06], k21= [1.10383e-01, 8.87888e-02], k22= [2.38830e+06, 1.28232e+06], k23= [5.63787e+02, 5.80843e+02], k24= [1.50305e+03, 1.64319e+03], k3= [3.41523e+00, 3.71213e+00], k4= [7.63932e+07, 1.19396e+08], k5= [1.30780e+01, 1.02717e+01], k6= [8.99389e+07, 8.80903e+07], k7= [1.61921e-01, 1.29950e-01], k8= [5.44027e+06, 8.13727e+06], k9= [1.93071e-01, 7.71558e-01]');


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

cf(4);plotNaiveResponse(pulse0IVM,P2X4free);
% 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4free);
% % 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4free);
% 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4free);
% 
% cf(8);plotNaiveResponse(prol3IVMsmall,P2X4free);

cf(9);plotNaiveResponse(prol2noIVM,P2X4free);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4free);

 cf(10);prestimDoseResponses(P2X4free);
    
continueChain(x0);
 
% 
cf(14);plotNaiveResponse(pulse0IVM,P2X4free);
% 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4free);
% % 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4free);
% % 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4free);
% % 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4free);

  cf(20);prestimDoseResponses(P2X4free);



 

save(['twalk_P2X4free_preStim_and_noIVM_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')

