global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r1','r2','r3','v1','v2','v3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;


% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;
% 
% fparam('k13')=1;
% fparam('k14')=1;
% fparam('k15')=1;
% fparam('k16')=1;
% fparam('k17')=1;
% fparam('k18')=1;
% 
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
fparam('L5')=1;
fparam('L6')=1;

fparam('tauivm')=1;
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
pMax('mu')=1e-5;
pMin('mu')=3e-6;
pMax('epsilon')=3e-6;
pMin('epsilon')=1e-6;
pMax('delta')=1e-6;
pMin('delta')=0;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,factorP2X4del);
[err2] = normDataErrorOmar(pulse1IVM,factorP2X4del);
[err3] = normDataErrorOmar(pulse3IVM,factorP2X4del);
[err4] = normDataErrorOmar(pulse10IVM,factorP2X4del);
[err5] = normDataErrorOmar(prol3IVM,factorP2X4del);
[err6] = normDataErrorOmar(prol2noIVM,factorP2X4del);

etot = @(x) 1000*err1(x)+10*err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);
emed = @(x) 2*err2(x)+err3(x)+err5(x);
[x0,bounds] = buildInitialParams();
    




p = struct('logPrior', @(x) 1, 'logLikelihood',@(x) -err4(x),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end
% 
%  [x0,xp0]=twalkStringParse('H1= [1.65847e-03, 2.37510e-03], H2= [1.81850e-01, 1.59103e-01], H3= [1.24653e-01, 1.40901e-01], H4= [1.09924e-03, 1.44301e-03], L1= [1.66151e+00, 2.27565e+00], L2= [5.98884e-01, 6.50386e-01], L3= [1.95243e-03, 3.62325e-03], L4= [6.21092e-02, 6.80638e-02], L5= [2.32658e-01, 3.36609e-01], L6= [7.20760e-01, 6.38312e-01], delta= [3.50000e-07, 3.88996e-07], epsilon= [2.63157e-06, 2.78647e-06], g1= [3.48919e-08, 3.15252e-08], g2= [1.65086e-07, 1.82227e-07], k1= [2.40545e+00, 2.25853e+00], k10= [1.08811e+08, 9.83920e+07], k11= [3.10276e-06, 1.88134e-06], k12= [5.61944e+03, 8.62726e+01], k13= [7.38172e-02, 4.82158e-02], k14= [7.03477e+07, 8.47023e+07], k15= [2.02811e-01, 2.47154e-01], k16= [1.65901e+05, 2.02079e+05], k17= [6.23484e+00, 6.85455e+00], k18= [4.94228e+04, 5.31433e+04], k19= [2.38528e+01, 3.10857e+01], k2= [1.10589e+06, 1.11362e+06], k20= [3.49686e+05, 1.85597e+05], k21= [9.03238e-04, 9.45859e-04], k22= [5.67918e+06, 5.54648e+06], k23= [1.65659e-01, 1.23270e-01], k24= [3.36930e+06, 3.30550e+06], k3= [5.71309e+00, 3.05185e+00], k4= [2.33560e+06, 2.28375e+06], k5= [5.09630e+00, 8.32570e+00], k6= [5.17366e+07, 4.85874e+07], k7= [9.57112e-02, 8.02759e-02], k8= [1.45931e+05, 1.38949e+05], k9= [1.84244e-01, 2.18281e-01], mu= [8.79642e-06, 4.67674e-06]');

Niter=3000;
0;
hold off



disp(['Initial Parameters:', tchainString(x0,xp0)])

[xxp,lt,acc] = twalkreflect('logTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,factorP2X4del);

% cf(5);plotNaiveResponse(pulse1IVM,factorP2X4del);
% 
% cf(6);plotNaiveResponse(pulse3IVM,factorP2X4del);

cf(7);plotNaiveResponse(pulse10IVM,factorP2X4del);

% cf(8);plotNaiveResponse(prol3IVM,factorP2X4del);

% cf(9);plotNaiveResponse(prol2noIVM,factorP2X4del);


    
continueChain(x0);
 
% cf(14);plotNaiveResponse(pulse0IVM,factorP2X4del);

% cf(15);plotNaiveResponse(pulse1IVM,factorP2X4del);
% 
% cf(16);plotNaiveResponse(pulse3IVM,factorP2X4del);

cf(17);plotNaiveResponse(pulse10IVM,factorP2X4del);

% cf(18);plotNaiveResponse(prol3IVM,factorP2X4del);

% cf(19);plotNaiveResponse(prol2noIVM,factorP2X4del);

% cf(20);chainPrestimDoseResponse(x0,factorP2X4del);

 

save(['twalk_factorP2X4_IVM_delay' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


