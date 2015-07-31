global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L10','L20','L30','L40','L50','L60','L11','L21','L31','L41','L51','L61','L12','L22','L32','L42','L52','L62','L13','L23','L33','L43','L53','L63','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;

fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

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
% 
fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;

% fparam('v1')=1;
% fparam('v2')=1;
% fparam('v3')=1;
% 
% fparam('r1')=1;
% fparam('r2')=1;
% fparam('r3')=1;



% 
fparam('L10')=1;
fparam('L20')=1;
fparam('L30')=1;
fparam('L40')=1;
fparam('L50')=1;
fparam('L60')=1;
% 
fparam('L11')=1;
fparam('L21')=1;
fparam('L31')=1;
fparam('L41')=1;
fparam('L51')=1;
fparam('L61')=1;
% 
fparam('L12')=1;
fparam('L22')=1;
fparam('L32')=1;
fparam('L42')=1;
fparam('L52')=1;
fparam('L62')=1;
% 
fparam('L13')=1;
fparam('L23')=1;
fparam('L33')=1;
fparam('L43')=1;
fparam('L53')=1;
fparam('L63')=1;

fparam('a1')=1;


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
% fparam('a1')=1;
% fparam('a2')=1;
% fparam('a3')=1;

% fparam('rho1')=1;
% fparam('rho2')=1;
% fparam('rho3')=1;

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

pMax('L31')=10e5;
pMax('L51')=1e7;
pMax('L63')=1e12;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,omarP2X4cooppotent1);
[err2] = normDataErrorOmar(pulse1IVM,omarP2X4cooppotent1);
[err3] = normDataErrorOmar(pulse3IVM,omarP2X4cooppotent1);
[err4] = normDataErrorOmar(pulse10IVM,omarP2X4cooppotent1);
[err5] = normDataErrorOmar(prol3IVM,omarP2X4cooppotent1);
[err6] = normDataErrorOmar(prol2noIVM,omarP2X4cooppotent1);

err7 = normPrestimDoseError(omarP2X4cooppotent1);


etot = @(x) err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x)+err7(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(omarP2X4cooppotent1);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);

p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err2,err3,err4,@(x) 1000000*err7(x)}},'bounds',bounds);

if p(1).logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p(1).logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
% [x0,xp0]=twalkStringParse('L10= [1.10361e+00, 1.12830e+00], L11= [1.13878e+00, 7.29134e-01], L12= [5.79573e-02, 8.51719e-02], L13= [7.13812e+01, 5.46230e+01], L20= [3.87071e-01, 7.77546e-01], L21= [1.62069e+00, 1.64458e+00], L22= [1.34100e+02, 2.30666e+02], L23= [8.91644e+00, 8.67510e+00], L30= [4.87962e-05, 1.81467e-05], L31= [2.40718e+00, 2.38522e+00], L32= [9.06984e-03, 2.44091e-02], L33= [3.75943e-03, 6.14597e-03], L40= [8.44809e-02, 8.19474e-02], L41= [3.66114e-03, 3.79377e-03], L42= [2.66206e-03, 2.55191e-03], L43= [8.73956e-03, 8.05816e-03], g2= [9.90061e-08, 7.16619e-08], k10= [4.15509e+08, 8.99833e+08], k11= [2.18434e+02, 2.46606e+02], k12= [7.80003e+08, 6.24391e+09], k13= [5.77374e-03, 8.68734e-03], k14= [4.36211e+05, 5.44092e+05], k15= [1.71369e-01, 1.53170e-01], k16= [1.06928e+10, 1.13656e+10], k17= [5.32755e+06, 7.46221e+06], k18= [9.48809e+06, 7.32124e+08], k7= [2.52265e+02, 3.21108e+02], k8= [7.50084e+05, 7.78131e+05], k9= [3.55645e+00, 3.46857e+00]');

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

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,omarP2X4cooppotent1);

cf(5);plotNaiveResponse(pulse1IVM,omarP2X4cooppotent1);

cf(6);plotNaiveResponse(pulse3IVM,omarP2X4cooppotent1);

cf(7);plotNaiveResponse(pulse10IVM,omarP2X4cooppotent1);

% cf(8);plotNaiveResponse(prol3IVM,omarP2X4cooppotent1);

% cf(9);plotNaiveResponse(prol2noIVM,omarP2X4cooppotent1);

 cf(10);chainPrestimDoseResponse(xp0,omarP2X4cooppotent1);


    
continueChain(x0);
 
% 
% cf(14);plotNaiveResponse(pulse0IVM,omarP2X4cooppotent1);

cf(15);plotNaiveResponse(pulse1IVM,omarP2X4cooppotent1);
% 
cf(16);plotNaiveResponse(pulse3IVM,omarP2X4cooppotent1);
% 
cf(17);plotNaiveResponse(pulse10IVM,omarP2X4cooppotent1);
% 
% cf(18);plotNaiveResponse(prol3IVM,omarP2X4cooppotent1);
% 
% cf(19);plotNaiveResponse(prol2noIVM,omarP2X4cooppotent1);

 cf(20);chainPrestimDoseResponse(x0,omarP2X4cooppotent1);




 

save(['twalk_omarP2X4cooppotent1_1-10uM_IVM_and_prestim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


