global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
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
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
% 
fparam('L5')=1;
fparam('L6')=1;
% 
fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;
% 
% fparam('V')=0;
fparam('epsilon')=1;
% fparam('delta')=1;
fparam('mu')=1;
% 
% fparam('n1')=1;
% fparam('n2')=1;
% fparam('n3')=1;

fparam('A')=0;
fparam('J')=0;

vals=fparam.values;
Npar=sum([vals{:}]);

pMax('L1')=50;
pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=3e-6;
pMin('epsilon')=1e-6;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;


[err1] = normDataErrorOmar(pulse0IVM,omarP2X4,0.03);
[err2] = normDataErrorOmar(pulse1IVM,omarP2X4,0.04);
[err3] = normDataErrorOmar(pulse3IVM,omarP2X4,0.05);
[err4] = normDataErrorOmar(pulse10IVM,omarP2X4,0.05);
[err5] = normDataErrorOmar(prol3IVM,omarP2X4,0.05);
[err6] = normDataErrorOmar(prol2noIVM,omarP2X4,0.05);

etot = @(x) 1000*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);


[x0,bounds] = buildInitialParams();

p = struct('logPrior', @(x) 1, 'logLikelihood',@(x) -(etot(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
   xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end
% 
  [x0,xp0]=twalkStringParse('H1= [2.00616e-03, 1.64782e-03], H2= [1.81850e-01, 1.59103e-01], H3= [1.24653e-01, 1.31175e-01], H4= [1.09924e-03, 1.41517e-03], L1= [1.66151e+00, 2.27565e+00], L2= [5.92820e-01, 7.06288e-01], L3= [2.21477e-03, 5.13172e-03], L4= [6.30047e-02, 6.71531e-02], L5= [2.32658e-01, 3.35060e-01], L6= [6.92138e-01, 6.25275e-01], delta= [3.50000e-07, 2.71031e-07], epsilon= [2.63157e-06, 2.71325e-06], g1= [3.48919e-08, 3.15252e-08], g2= [1.65086e-07, 1.82227e-07], k1= [2.40545e+00, 2.25853e+00], k10= [8.67806e+07, 7.91253e+07], k11= [3.10276e-06, 1.76953e-06], k12= [1.95640e+03, 6.52585e+03], k13= [5.75239e-02, 4.82158e-02], k14= [1.00700e+08, 6.55446e+07], k15= [2.02811e-01, 2.46625e-01], k16= [1.67838e+05, 2.02079e+05], k17= [6.35750e+00, 5.86998e+00], k18= [4.82980e+04, 4.13097e+04], k19= [2.38528e+01, 2.91637e+01], k2= [1.09843e+06, 1.11952e+06], k20= [3.52548e+05, 5.28112e+05], k21= [9.03238e-04, 9.45859e-04], k22= [5.87101e+06, 6.41537e+06], k23= [1.58133e-01, 1.23270e-01], k24= [3.36930e+06, 3.27904e+06], k3= [5.71309e+00, 3.26846e+00], k4= [2.37705e+06, 2.45553e+06], k5= [4.48718e+00, 8.32570e+00], k6= [5.17366e+07, 4.93124e+07], k7= [9.57112e-02, 6.63700e-02], k8= [1.31168e+05, 1.46494e+05], k9= [1.84244e-01, 1.31404e-01], mu= [8.79642e-06, 5.98728e-06]');

    
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,omarP2X4);

cf(5);plotNaiveResponse(pulse1IVM,omarP2X4);

cf(6);plotNaiveResponse(pulse3IVM,omarP2X4);

cf(7);plotNaiveResponse(pulse10IVM,omarP2X4);

cf(8);plotNaiveResponse(prol3IVM,omarP2X4);

cf(9);plotNaiveResponse(prol2noIVM,omarP2X4);


    
continueChain(x0);
 
cf(14);plotNaiveResponse(pulse0IVM,omarP2X4);

cf(15);plotNaiveResponse(pulse1IVM,omarP2X4);

cf(16);plotNaiveResponse(pulse3IVM,omarP2X4);

cf(17);plotNaiveResponse(pulse10IVM,omarP2X4);

cf(18);plotNaiveResponse(prol3IVM,omarP2X4);

cf(19);plotNaiveResponse(prol2noIVM,omarP2X4);



