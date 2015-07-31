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
% 
fparam('k7')=1;
fparam('k8')=1;
fparam('k9')=1;
fparam('k10')=1;
fparam('k11')=1;
fparam('k12')=1;

fparam('v1')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r3')=1;



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

fparam('L5')=1;
fparam('L6')=1;
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
% fparam('H2')=1;
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

pMax('L2')=0.1;
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
% pMax('k11')=100;
pMax('ku0')=1000;
pMax('ku1')=100;
pMax('ku2')=100;
pMax('ku3')=1000;
pMax('kd0')=10^8;
pMax('kd1')=10^8;



pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4two);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4two);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4two);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4two);
[err5] = normDataErrorOmar(prol3IVMsmall,potentP2X4two);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4two);

err7 = normPrestimDoseError(potentP2X4two);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(potentP2X4two);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) 1, 'logLikelihood',{{err1,err5,@(x) 100*err7(x)}},'bounds',bounds);

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
% 
%   [x0,xp0]=twalkStringParse('H1= [6.35400e-04, 6.35400e-04], H3= [1.77700e-01, 1.77700e-01], H4= [1.24600e-03, 1.24600e-03], L11= [2.66065e-02, 2.82179e-02], L12= [5.99565e-01, 5.69558e-01], L13= [6.66268e-01, 5.17330e-01], L14= [1.78460e+01, 2.16265e+01], L21= [7.42579e-03, 7.32611e-03], L22= [4.83204e-02, 5.36272e-02], L23= [6.75930e+00, 3.37676e+00], L24= [1.19290e+00, 7.75143e-01], L31= [2.25293e-05, 3.16215e-05], L32= [2.07162e-02, 1.43268e-02], L33= [1.60141e-01, 5.16284e-02], L34= [4.05170e-02, 4.82386e-02], L41= [1.50960e-02, 1.60863e-02], L42= [1.58419e-01, 2.47655e-01], L43= [1.37918e-01, 1.22756e-01], L44= [1.85324e+00, 1.49965e+00], L5= [7.47654e-01, 3.53548e-01], L6= [2.69682e-01, 7.80614e-01], g1= [3.50200e-08, 4.03160e-08], g2= [1.84009e-07, 2.52409e-07], k1= [9.20072e+01, 1.22213e+02], k10= [4.07953e+07, 6.41758e+07], k11= [3.07905e-01, 3.68047e-01], k12= [8.79742e+07, 9.02331e+07], k2= [1.18952e+06, 9.68778e+05], k3= [5.30002e+00, 3.53708e+00], k4= [1.66384e+09, 7.11500e+08], k5= [4.47518e+03, 3.58174e+03], k6= [1.05795e+10, 5.64954e+09], k7= [6.31314e+01, 4.92167e+01], k8= [5.04697e+08, 2.93064e+08], k9= [1.10608e-01, 1.24534e-01], r1= [1.47768e-04, 2.03581e-04], r3= [5.28324e+02, 1.20199e+02], v1= [3.69500e-01, 4.64627e-01], v3= [5.24559e-03, 7.06165e-03]');

Niter=5000;
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

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4two);
% 
% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4two);
% 
% cf(6);plotNaiveResponse(pulse3IVM,potentP2X4two);

% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4two);

cf(8);plotNaiveResponse(prol3IVMsmall,potentP2X4two);

% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4two);

%  cf(10);chainPrestimDoseResponse(xp0,potentP2X4two);

 cf(10);prestimDoseResponses(potentP2X4two);
    
continueChain(x0);
 
% 
cf(14);plotNaiveResponse(pulse0IVM,potentP2X4two);
% 
% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4two);
% % 
% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4two);
% 
% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4two);
% 
cf(18);plotNaiveResponse(prol3IVMsmall,potentP2X4two);
% 
% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4two);

 cf(20);prestimDoseResponses(potentP2X4two);



 

save(['twalk_potentP2X4two_preStim_and_10uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


