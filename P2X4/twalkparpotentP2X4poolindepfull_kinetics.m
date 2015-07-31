global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% fparam('a1')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

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

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;


fparam('w1')=1;
fparam('w2')=1;
fparam('w3')=1;

fparam('s1')=1;
fparam('s2')=1;
fparam('s3')=1;


fparam('kd0')=1;
fparam('ku0')=1;
fparam('kd1')=1;
fparam('ku1')=1;
fparam('kd2')=1;
fparam('ku2')=1;
fparam('kd3')=1;
fparam('ku3')=1;


% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;
fparam('L7')=1;
fparam('L8')=1;
fparam('L9')=1;
fparam('L10')=1;
fparam('L11')=1;
fparam('L12')=1;

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

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4poolindepfull);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4poolindepfull);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4poolindepfull);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4poolindepfull);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4poolindepfull);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4poolindepfull);

err7 = normPrestimDoseError(potentP2X4poolindepfull);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

% dilation = modelDilation(potentP2X4poolindepfull);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) poolIndepDilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6,@(x) 100000*err7(x)}},'bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

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
% 
% [x0,xp0]=twalkStringParse('H1= [1.38462e-04, 2.96593e-04], H2= [1.34583e-01, 9.01440e-02], H3= [2.85844e-03, 3.04837e-03], H4= [1.62208e-02, 1.21732e-02], L1= [4.99834e+01, 4.58455e+01], L10= [7.17312e-04, 2.47923e-04], L11= [3.60804e-01, 1.07923e-01], L12= [1.63001e-02, 2.78509e-02], L2= [2.67664e-01, 1.04875e-01], L3= [1.27054e-02, 1.35312e-02], L4= [3.80397e+00, 5.32155e+00], L5= [5.73610e+02, 2.43133e+03], L6= [9.07183e-01, 1.20753e+00], L7= [3.15313e-03, 2.68125e-03], L8= [1.26113e-01, 2.67829e-01], L9= [9.12797e-05, 1.06648e-04], g2= [1.97109e-07, 2.55320e-07], k1= [2.44797e+00, 2.27969e+00], k10= [3.84087e+07, 1.83963e+07], k11= [4.04792e+00, 1.35827e+00], k12= [1.07473e+09, 9.16760e+08], k2= [2.92364e+05, 2.74758e+05], k3= [3.57205e+01, 3.98814e+01], k4= [7.84245e+08, 7.67630e+08], k5= [3.57999e+00, 2.48354e+00], k6= [1.57725e+06, 1.51125e+06], k7= [3.40853e+02, 3.75561e+02], k8= [1.04720e+07, 9.07059e+06], k9= [2.98122e-01, 8.44744e-02], kd0= [2.66739e+01, 2.44830e+01], kd1= [2.91055e+07, 4.76165e+07], kd2= [2.06381e+03, 3.43386e+03], kd3= [8.05786e+04, 9.26009e+04], ku0= [4.71691e-01, 6.81980e-01], ku1= [1.01835e+00, 1.54278e+00], ku2= [2.96862e-02, 2.99987e-02], ku3= [2.05834e+00, 1.64802e+00], r1= [2.38894e-03, 2.68774e-03], r2= [5.88030e-01, 7.08439e-01], r3= [9.86686e+02, 1.48298e+03], s1= [1.08111e-04, 8.29965e-05], s2= [9.91677e-06, 1.12442e-04], s3= [6.24312e+03, 9.67466e+03], v1= [9.67710e-02, 2.27655e-01], v2= [2.57088e-02, 3.57911e-02], v3= [9.42800e-03, 2.04247e-02], w1= [4.14731e-02, 4.93666e-02], w2= [2.33037e+01, 2.74133e+01], w3= [1.71174e+02, 2.13333e+02]');

Niter=12000;
0;
hold off



disp(['Initial Parameters:', tchainString(x0,xp0)])

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4poolindepfull);

cf(5);plotNaiveResponse(pulse1IVM,potentP2X4poolindepfull);

cf(6);plotNaiveResponse(pulse3IVM,potentP2X4poolindepfull);
% 
cf(7);plotNaiveResponse(pulse10IVM,potentP2X4poolindepfull);
% 
cf(8);plotNaiveResponse(prol3IVM,potentP2X4poolindepfull);
% 
cf(9);plotNaiveResponse(prol2noIVM,potentP2X4poolindepfull);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4poolindepfull);


    
continueChain(x0);
%  
% 
cf(14);plotNaiveResponse(pulse0IVM,potentP2X4poolindepfull);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4poolindepfull);

cf(16);plotNaiveResponse(pulse3IVM,potentP2X4poolindepfull);

cf(17);plotNaiveResponse(pulse10IVM,potentP2X4poolindepfull);
% 
cf(18);plotNaiveResponse(prol3IVM,potentP2X4poolindepfull);
% 
cf(19);plotNaiveResponse(prol2noIVM,potentP2X4poolindepfull);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4poolindepfull);


% cf(21);prestimDoseResponses(potentP2X4poolindepfull);

 

save(['twalk_potentP2X4poolindepfull_kinetics_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


