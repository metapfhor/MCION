global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
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
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% % 
% fparam('V')=0;
fparam('epsilon')=1;
 fparam('delta')=1;
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
pMax('delta')=1e-6;
pMin('delta')=3e-7;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

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
  [x0,xp0]=twalkStringParse('L1= [1.51784e+00, 1.70710e+00], L2= [8.41546e-01, 7.04110e-01], L3= [1.09699e-03, 1.20052e-03], L4= [3.26572e-02, 4.00722e-02], L5= [1.91236e-01, 2.64453e-01], L6= [4.98925e+00, 1.14078e+00], delta= [5.54926e-08, 2.69324e-07], epsilon= [1.25447e-06, 1.40942e-06], g2= [1.26435e-07, 1.39256e-07], k10= [1.16105e+08, 1.18356e+08], k11= [7.67131e-07, 7.01723e-07], k12= [6.66012e+03, 7.28701e+03], k13= [1.49796e-02, 1.48207e-02], k14= [1.07780e+08, 7.87595e+07], k15= [4.94036e-01, 3.55981e-01], k16= [3.57787e+05, 3.05949e+05], k17= [2.74742e+01, 3.14632e+01], k18= [6.91562e+04, 6.55932e+04], k19= [7.32331e+01, 4.36135e+01], k20= [6.30892e+05, 6.75211e+05], k21= [4.58147e-02, 3.36546e-03], k22= [1.91073e+06, 2.00551e+06], k23= [2.96400e-03, 3.21881e-03], k24= [4.63116e+06, 2.62053e+06], k7= [1.38756e-01, 9.74292e-02], k8= [1.70662e+05, 1.69927e+05], k9= [2.09164e+00, 3.98328e+00], mu= [6.41338e-06, 5.43206e-06]');

    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,omarP2X4);

cf(5);plotNaiveResponse(pulse1IVM,omarP2X4);

cf(6);plotNaiveResponse(pulse3IVM,omarP2X4);

cf(7);plotNaiveResponse(pulse10IVM,omarP2X4);

cf(8);plotNaiveResponse(prol3IVM,omarP2X4);

% cf(9);plotNaiveResponse(prol2noIVM,omarP2X4);


    
continueChain(x0);
 
% cf(14);plotNaiveResponse(pulse0IVM,omarP2X4);

cf(15);plotNaiveResponse(pulse1IVM,omarP2X4);

cf(16);plotNaiveResponse(pulse3IVM,omarP2X4);

cf(17);plotNaiveResponse(pulse10IVM,omarP2X4);

cf(18);plotNaiveResponse(prol3IVM,omarP2X4);

% cf(19);plotNaiveResponse(prol2noIVM,omarP2X4);



