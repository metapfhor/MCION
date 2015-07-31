global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

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

fparam('L11')=1;
fparam('L21')=1;
fparam('L31')=1;
fparam('L41')=1;
fparam('L51')=1;
fparam('L61')=1;

fparam('L12')=1;
fparam('L22')=1;
fparam('L32')=1;
fparam('L42')=1;
fparam('L52')=1;
fparam('L62')=1;

fparam('L13')=1;
fparam('L23')=1;
fparam('L33')=1;
fparam('L43')=1;
fparam('L53')=1;
fparam('L63')=1;


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

[err1] = normDataErrorOmar(pulse0IVM,omarP2X4coop);
[err2] = normDataErrorOmar(pulse1IVM,omarP2X4coop);
[err3] = normDataErrorOmar(pulse3IVM,omarP2X4coop);
[err4] = normDataErrorOmar(pulse10IVM,omarP2X4coop);
[err5] = normDataErrorOmar(prol3IVM,omarP2X4coop);
[err6] = normDataErrorOmar(prol2noIVM,omarP2X4coop);

err7 = metricSSE(@ATPDoseResponse,omarP2X4coop,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,omarP2X4coop,I10);
err9 = metricSSE(@ATPDoseResponse30,omarP2X4coop,I30);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(omarP2X4coop);


p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

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
  [x0,xp0]=twalkStringParse('H1= [8.16817e-04, 7.37834e-04], H2= [2.74495e-01, 6.79556e-01], H3= [4.70167e-03, 1.24903e-02], H4= [3.61264e-02, 4.28615e-02], L10= [1.62596e+00, 6.74104e-01], L11= [3.45864e-01, 7.05223e-01], L12= [2.07987e+00, 1.99469e+00], L13= [8.05145e-01, 6.87760e-01], L20= [1.32381e+01, 5.51973e+01], L21= [5.91408e+02, 1.59061e+03], L22= [1.03338e+01, 8.85064e+00], L23= [8.36274e+06, 1.33332e+07], L30= [4.89591e-05, 2.09013e-04], L31= [1.22059e-04, 1.71837e-04], L32= [1.38135e-05, 3.55389e-05], L33= [3.63568e-04, 1.05397e-04], L40= [1.55976e-02, 1.87321e-02], L41= [1.26083e+00, 6.82256e-01], L42= [5.29035e-02, 4.13573e-02], L43= [5.03936e+00, 7.68314e+00], L50= [1.38688e-01, 2.43979e-01], L51= [2.03572e-01, 2.00635e-01], L52= [5.51746e-01, 1.20455e+00], L53= [6.70084e-02, 6.26422e-03], L60= [1.33375e+09, 1.54952e+01], L61= [2.25870e+01, 1.39095e+02], L62= [2.86635e+00, 7.06820e+00], L63= [4.76735e+03, 2.39822e+03], g1= [4.49701e-08, 4.71669e-08], g2= [8.67862e-08, 6.64214e-08], k1= [3.56950e+00, 3.00185e+00], k10= [2.29365e+09, 1.19370e+09], k11= [2.04899e+04, 3.79737e+04], k12= [1.53693e+08, 2.42965e+08], k13= [7.33488e-02, 4.65042e-02], k14= [5.35159e+05, 1.30875e+06], k15= [5.86698e-01, 1.10169e+00], k16= [9.62504e+08, 6.58303e+08], k17= [6.44749e+02, 4.76302e+02], k18= [7.91523e+08, 3.34906e+07], k19= [2.35818e+09, 2.01507e+00], k2= [1.95727e+05, 4.73299e+05], k20= [2.92344e+03, 3.62730e+03], k21= [3.46350e+01, 2.61133e+01], k22= [1.20609e+08, 8.10378e+07], k23= [2.08921e+04, 2.03726e+04], k24= [1.98279e+07, 2.02880e+07], k3= [5.06411e+00, 2.24382e+00], k4= [2.45042e+08, 4.74089e+07], k5= [7.01950e+07, 9.42024e+06], k6= [5.08645e+08, 5.01946e+08], k7= [1.90202e+00, 3.92862e+00], k8= [1.36569e+05, 2.68659e+05], k9= [4.63447e+00, 2.29580e+01]');

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

[xxp,lt,acc] = twalkreflect('logTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,omarP2X4coop);

% cf(5);plotNaiveResponse(pulse1IVM,omarP2X4coop);

% cf(6);plotNaiveResponse(pulse3IVM,omarP2X4coop);

% cf(7);plotNaiveResponse(pulse10IVM,omarP2X4coop);

% cf(8);plotNaiveResponse(prol3IVM,omarP2X4coop);

% cf(9);plotNaiveResponse(prol2noIVM,omarP2X4coop);

 cf(10);chainPrestimDoseResponse(xp0,omarP2X4coop);


    
continueChain(x0);
 

% cf(14);plotNaiveResponse(pulse0IVM,omarP2X4coop);

% cf(15);plotNaiveResponse(pulse1IVM,omarP2X4coop);

% cf(16);plotNaiveResponse(pulse3IVM,omarP2X4coop);

% cf(17);plotNaiveResponse(pulse10IVM,omarP2X4coop);

% cf(18);plotNaiveResponse(prol3IVM,omarP2X4coop);

% cf(19);plotNaiveResponse(prol2noIVM,omarP2X4coop);

 cf(20);chainPrestimDoseResponse(x0,omarP2X4coop);




 

save(['twalk_omarP2X4coop_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


