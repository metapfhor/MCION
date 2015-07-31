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

fparam('k13')=1;
fparam('k14')=1;
fparam('k15')=1;
fparam('k16')=1;
fparam('k17')=1;
fparam('k18')=1;

% fparam('k19')=1;
% fparam('k20')=1;
% fparam('k21')=1;
% fparam('k22')=1;
% fparam('k23')=1;
% fparam('k24')=1;
% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
% 
% fparam('L5')=1;
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

% fparam('A')=0;
% fparam('J')=0;
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
pMax('epsilon')=1e-5;
pMax('delta')=1e-5;
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
  [x0,xp0]=twalkStringParse('H1= [8.73097e-03, 1.01081e-02], H2= [3.00000e-01, 2.16530e-01], H3= [1.68568e-01, 2.11103e-01], H4= [8.42279e-03, 7.41919e-03], L1= [2.79204e+00, 2.45295e+00], L2= [1.53694e+00, 1.34983e+00], L3= [5.51646e-03, 4.23858e-03], L4= [8.04821e-02, 6.46837e-02], g1= [3.49218e-08, 3.09846e-08], g2= [1.25524e-07, 1.28086e-07], k1= [2.22303e+00, 2.25810e+00], k10= [1.10894e+08, 1.28748e+08], k11= [3.24948e-04, 5.23517e-04], k12= [1.40887e+04, 1.61898e+04], k13= [1.45400e-01, 4.56105e-02], k14= [1.10248e+09, 1.40204e+09], k15= [2.73605e-01, 2.51745e-01], k16= [2.41828e+05, 1.91750e+05], k17= [2.82368e+01, 2.49119e+01], k18= [7.78097e+04, 5.69877e+05], k2= [1.01517e+06, 9.61100e+05], k3= [3.43987e+00, 3.06711e+00], k4= [3.34212e+06, 2.04693e+06], k5= [7.79038e+00, 7.24808e+00], k6= [5.28073e+07, 5.81569e+07], k7= [1.53758e+00, 1.20425e+00], k8= [1.04172e+05, 1.23057e+05], k9= [1.02921e+00, 1.22706e+00]');

    
    
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



