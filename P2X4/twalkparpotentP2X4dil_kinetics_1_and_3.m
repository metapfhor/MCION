global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','ku0','kd1','ku1','kd2','ku2','kd3','ku3','L1','L2','L3','L4','L5','L6','L7','L8','L9','L10','L11','L12','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
fparam('a1')=1;
fparam('a2')=1;
fparam('a3')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;
% 
% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;

fparam('k7')=1;
fparam('k8')=1;
fparam('k9')=1;
fparam('k10')=1;
fparam('k11')=1;
fparam('k12')=1;

% fparam('k13')=1;
% fparam('k14')=1;
% fparam('k15')=1;
% fparam('k16')=1;
% fparam('k17')=1;
% fparam('k18')=1;


fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;

% 
% fparam('w1')=1;
% fparam('w2')=1;
% fparam('w3')=1;
% 
% fparam('s1')=1;
% fparam('s2')=1;
% fparam('s3')=1;


% fparam('u1')=1;
% fparam('u2')=1;
% fparam('u3')=1;
% 
% fparam('q1')=1;
% fparam('q2')=1;
% fparam('q3')=1;



fparam('kd0')=1;
fparam('ku0')=1;
fparam('kd1')=1;
fparam('ku1')=1;
fparam('kd2')=1;
fparam('ku2')=1;
fparam('kd3')=1;
fparam('ku3')=1;
% 
% fparam('kdd0')=1;
% fparam('kuu0')=1;
% fparam('kdd1')=1;
% fparam('kuu1')=1;
% fparam('kdd2')=1;
% fparam('kuu2')=1;
% fparam('kdd3')=1;
% fparam('kuu3')=1;


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


% fparam('L13')=1;
% fparam('L14')=1;
% fparam('L15')=1;
% fparam('L16')=1;
% fparam('L17')=1;
% fparam('L18')=1;



fparam('alpha')=1;
% 
% fparam('a1')=1;
% fparam('a2')=1;
% fparam('a3')=1;



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

pMax('q1')=10^5;
pMax('u1')=10^5;
pMax('L16')=10^5;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4dil);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4dil);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4dil);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4dil);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4dil);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4dil);

err7 = normPrestimDoseError(potentP2X4dil);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

 dilation = modelDilation(potentP2X4dil);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err2,err3,err5}},'bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

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
% [x0,xp0]=twalkStringParse('H1= [2.49961e-05, 8.59275e-05], H2= [6.69016e-02, 1.51627e-01], H3= [4.57529e-03, 1.30461e-03], H4= [1.43731e-04, 1.36264e-04], L1= [4.49639e+01, 4.83498e+01], L10= [1.24368e+00, 3.15918e-01], L11= [3.57034e-03, 5.32882e-03], L12= [4.20388e-04, 9.71578e-05], L13= [9.67432e+00, 8.01046e+00], L14= [6.13247e-02, 3.24379e-02], L15= [7.47246e-04, 9.36609e-04], L16= [3.59452e+09, 1.55754e+09], L17= [3.19061e-04, 2.20894e-04], L18= [3.89240e-01, 3.88704e-01], L2= [2.94865e-01, 2.65567e-01], L3= [3.61098e-02, 3.67709e-02], L4= [8.73367e+00, 6.79531e+00], L5= [1.38014e+01, 1.97624e+01], L6= [2.23121e-01, 3.95516e+00], L7= [9.20903e+00, 5.36358e+00], L8= [3.31174e-02, 6.54185e-02], L9= [1.84645e-03, 2.48008e-03], g2= [1.46588e-07, 8.84282e-08], k1= [1.09289e+01, 2.10566e+01], k10= [1.22904e+08, 2.87312e+08], k11= [5.60764e-02, 1.41727e-02], k12= [4.36959e+05, 6.95528e+05], k13= [6.70807e-02, 4.81637e-02], k14= [2.47642e+06, 6.48412e+05], k15= [7.87096e-02, 7.42696e-02], k16= [2.18206e+06, 8.69476e+05], k17= [8.46731e+01, 1.25591e+02], k18= [3.94915e+04, 7.21006e+04], k2= [3.65252e+05, 4.24713e+05], k3= [3.34455e+01, 5.25458e+01], k4= [1.34782e+09, 1.41817e+09], k5= [2.02238e+00, 1.20739e+01], k6= [6.49869e+06, 4.04030e+06], k7= [1.45221e+03, 7.41697e+02], k8= [2.53503e+05, 9.00282e+04], k9= [3.24116e+01, 3.37205e+01], kd0= [9.41468e+01, 2.90055e+01], kd1= [3.65177e+03, 3.61967e+03], kd2= [1.26638e+02, 1.34245e+02], kd3= [3.28422e+06, 1.24022e+06], kdd0= [4.62971e+02, 2.80656e+02], kdd1= [9.82707e+02, 5.29499e+02], kdd2= [1.10793e+04, 2.66982e+03], kdd3= [9.13115e+05, 1.55550e+06], ku0= [1.87244e+00, 1.70262e+00], ku1= [1.08522e+01, 1.11641e+01], ku2= [2.98724e-02, 2.85084e-02], ku3= [1.43201e+00, 1.69724e+00], kuu0= [6.21239e+08, 2.96466e+08], kuu1= [9.00843e+00, 2.17589e+01], kuu2= [1.66690e-01, 1.33705e-01], kuu3= [3.34804e+00, 3.24296e+00], q1= [1.34059e+09, 5.19852e+08], q2= [4.17035e-02, 3.38964e-02], q3= [1.41823e+02, 5.18483e+02], r1= [4.29815e-01, 4.30416e-01], r2= [7.51922e-01, 2.59789e+00], r3= [4.56042e+00, 4.65478e+00], s1= [4.87119e-05, 3.39939e-05], s2= [1.06144e-01, 7.27864e-02], s3= [9.19690e+01, 1.03830e+02], u1= [6.19696e+08, 9.54891e+08], u2= [7.43708e+01, 7.31074e+01], u3= [4.21762e+00, 2.82626e-01], v1= [8.44944e-01, 2.02219e+00], v2= [1.88242e-02, 1.68634e-02], v3= [2.84190e-03, 2.44560e-03], w1= [7.38443e+01, 1.24911e+01], w2= [1.19690e+02, 1.35703e+02], w3= [1.21532e+02, 5.40692e+01]');

Niter=6000;
0;
hold off



disp(['Initial Parameters:', tchainString(x0,xp0)])

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4dil);

cf(5);plotNaiveResponse(pulse1IVM,potentP2X4dil);
% 
cf(6);plotNaiveResponse(pulse3IVM,potentP2X4dil);
% 
% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4dil);
% 
cf(8);plotNaiveResponse(prol3IVM,potentP2X4dil);
% 
% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4dil);

%  cf(10);chainPrestimDoseResponse(xp0,potentP2X4dil);


    
continueChain(x0);
%  
% 
% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4dil);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4dil);

cf(16);plotNaiveResponse(pulse3IVM,potentP2X4dil);

% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4dil);
% 
cf(18);plotNaiveResponse(prol3IVM,potentP2X4dil);
% 
% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4dil);

%  cf(20);chainPrestimDoseResponse(x0,potentP2X4dil);


% cf(21);prestimDoseResponses(potentP2X4dil);

 

save(['twalk_potentP2X4dil_kinetics_1_and_3_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


