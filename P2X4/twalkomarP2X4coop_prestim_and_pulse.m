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

err7 = normPrestimDoseError(omarP2X4coop);


etot = @(x) err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x)+err7(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(omarP2X4coop);


p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(etot(x)),'bounds',bounds);

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
% [x0,xp0]=twalkStringParse(' H1= [8.16817e-04, 7.68590e-04], H2= [2.74495e-01, 3.09214e-01], H3= [3.29588e-02, 2.71556e-02], H4= [5.90117e-02, 3.18986e-02], L10= [2.14633e-01, 2.57878e-01], L11= [3.84191e-01, 7.05223e-01], L12= [1.92604e+00, 2.00667e+00], L13= [8.35426e-01, 7.50775e-01], L20= [8.46623e+01, 5.51973e+01], L21= [2.98687e+03, 3.69894e+03], L22= [1.03338e+01, 8.85064e+00], L23= [8.36274e+06, 1.66575e+07], L30= [5.81326e-05, 6.80605e-05], L31= [5.82234e-06, 2.12357e-04], L32= [2.46073e-05, 4.00381e-05], L33= [8.01955e-04, 6.38228e-05], L40= [1.55976e-02, 1.87321e-02], L41= [3.70203e+00, 3.05308e+00], L42= [6.91916e-02, 6.36825e-02], L43= [5.03936e+00, 2.60628e+00], L50= [1.38688e-01, 2.39145e-01], L51= [2.01948e-01, 1.99404e-01], L52= [7.50483e-01, 1.39142e+00], L53= [6.06444e-02, 6.26422e-03], L60= [1.45185e+09, 1.54952e+01], L61= [2.25870e+01, 1.65741e+02], L62= [9.20506e+00, 7.71855e+00], L63= [4.76735e+03, 7.22908e+03], g1= [4.49344e-08, 4.28182e-08], g2= [8.67862e-08, 6.64214e-08], k1= [4.56083e+00, 8.03307e+00], k10= [3.59586e+09, 1.07528e+09], k11= [5.71276e+04, 2.40774e+04], k12= [3.28803e+08, 1.55760e+08], k13= [5.76573e-02, 4.65042e-02], k14= [5.35159e+05, 1.30875e+06], k15= [1.95395e+00, 3.48784e+00], k16= [3.19660e+09, 1.62279e+10], k17= [1.00518e+03, 5.39815e+02], k18= [7.95857e+08, 3.34906e+07], k19= [2.35818e+09, 2.01507e+00], k2= [2.33097e+05, 4.73299e+05], k20= [4.58937e+03, 3.62730e+03], k21= [3.46350e+01, 2.61133e+01], k22= [5.82079e+07, 8.10378e+07], k23= [2.07413e+04, 2.05552e+04], k24= [1.95293e+07, 1.89907e+07], k3= [5.60793e+00, 2.24382e+00], k4= [2.58244e+08, 4.74089e+07], k5= [5.64333e+07, 1.41099e+06], k6= [5.01819e+08, 4.95324e+08], k7= [7.89859e-01, 2.01476e+00], k8= [1.36569e+05, 2.37413e+05], k9= [4.63447e+00, 2.29580e+01]');

Niter=2000;
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

cf(4);plotNaiveResponse(pulse0IVM,omarP2X4coop);

cf(5);plotNaiveResponse(pulse1IVM,omarP2X4coop);

cf(6);plotNaiveResponse(pulse3IVM,omarP2X4coop);

cf(7);plotNaiveResponse(pulse10IVM,omarP2X4coop);

cf(8);plotNaiveResponse(prol3IVM,omarP2X4coop);

cf(9);plotNaiveResponse(prol2noIVM,omarP2X4coop);

 cf(10);chainPrestimDoseResponse(xp0,omarP2X4coop);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,omarP2X4coop);

cf(15);plotNaiveResponse(pulse1IVM,omarP2X4coop);

cf(16);plotNaiveResponse(pulse3IVM,omarP2X4coop);

cf(17);plotNaiveResponse(pulse10IVM,omarP2X4coop);

cf(18);plotNaiveResponse(prol3IVM,omarP2X4coop);

cf(19);plotNaiveResponse(prol2noIVM,omarP2X4coop);

 cf(20);chainPrestimDoseResponse(x0,omarP2X4coop);




 

save(['twalk_omarP2X4coop_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


