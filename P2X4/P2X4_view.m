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
  [x0,xp0]=twalkStringParse(' L1= [2.69828e+00, 3.84998e+00], L2= [5.52149e-01, 5.19599e-01], L3= [6.04759e-03, 7.84922e-03], L4= [1.09370e-01, 1.53658e-01], g2= [1.51662e-07, 1.69184e-07], k10= [2.18612e+07, 1.35012e+07], k11= [4.53017e-06, 4.13932e-07], k12= [1.23285e+04, 1.10147e+04], k13= [7.73246e-02, 7.59091e-02], k14= [3.55995e+07, 5.48907e+07], k15= [2.12217e-01, 2.26254e-01], k16= [2.40704e+05, 2.26371e+05], k17= [1.91059e+00, 1.97659e+00], k18= [2.80358e+04, 8.95057e+02], k7= [5.64888e-03, 9.64252e-03], k8= [1.75902e+05, 1.10461e+05], k9= [6.24944e-02, 5.23720e-02]');

    
    
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

cf(22);plotPulseDoseResponse(omarP2X4);

