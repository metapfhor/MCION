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
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;
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

[err1] = normDataErrorOmar(pulse0IVM,omarP2X4);
[err2] = normDataErrorOmar(pulse1IVM,omarP2X4);
[err3] = normDataErrorOmar(pulse3IVM,omarP2X4);
[err4] = normDataErrorOmar(pulse10IVM,omarP2X4);
[err5] = normDataErrorOmar(prol3IVM,omarP2X4);
[err6] = normDataErrorOmar(prol2noIVM,omarP2X4);

err7 = metricSSE(@ATPDoseResponse,omarP2X4,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,omarP2X4,I10);
err9 = metricSSE(@ATPDoseResponse30,omarP2X4,I30);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(omarP2X4);


p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse(' H1= [3.50275e-04, 2.18615e-04], H2= [2.55835e-01, 2.39901e-01], H3= [1.30904e-01, 1.19192e-01], H4= [1.89108e-03, 2.18146e-03], L1= [3.73875e+00, 8.04730e-01], L2= [3.44211e+00, 3.52908e+00], L3= [4.68660e-03, 6.73785e-04], L4= [6.37501e-02, 7.16011e-02], L5= [1.23794e-01, 3.01158e-02], L6= [3.89153e+00, 3.11972e+00], a1= [1.00000e+00, 1.38611e+00], a2= [1.00000e+00, 1.57108e+00], a3= [1.00000e+00, 1.75518e+00], alpha= [2.09220e-02, 5.75988e-02], g1= [3.39724e-08, 1.61379e-08], g2= [1.38028e-07, 3.12506e-08], k1= [1.95301e+00, 1.85636e+00], k2= [2.89344e+05, 1.29542e+05], k3= [1.45032e+01, 9.20927e+00], k4= [3.39867e+07, 3.36759e+07], k5= [2.29368e+02, 3.15226e+02], k6= [8.61532e+05, 3.63653e+07], kd0= [8.23562e+06, 3.91180e+06], kd1= [1.17001e+07, 3.77527e+06], kd2= [1.25517e+07, 1.44420e+07], kd3= [7.45644e+06, 1.17882e+06], ku0= [8.59305e+00, 6.20692e+00], ku1= [2.41509e+00, 3.13133e+00], ku2= [3.56442e+00, 2.97021e+00], ku3= [6.89230e+00, 8.67755e+00], r1= [4.81740e-01, 4.63029e-01], r2= [2.09985e+00, 1.34259e+00], r3= [2.38623e-01, 1.79741e-01], rho1= [1.25991e+00, 5.17970e-01], rho2= [1.36451e+01, 1.73336e+01], rho3= [2.46613e+02, 3.02107e+02], v1= [1.98004e+00, 2.47904e+00], v2= [5.74808e-02, 6.40919e-02], v3= [3.08647e-02, 2.76508e-02]');

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

[xxp,lt,acc] = twalkreflect('logTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
    
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,omarP2X4);

% cf(5);plotNaiveResponse(pulse1IVM,omarP2X4);

% cf(6);plotNaiveResponse(pulse3IVM,omarP2X4);

% cf(7);plotNaiveResponse(pulse10IVM,omarP2X4);

% cf(8);plotNaiveResponse(prol3IVM,omarP2X4);

% cf(9);plotNaiveResponse(prol2noIVM,omarP2X4);

 cf(10);chainPrestimDoseResponse(xp0,omarP2X4);


    
continueChain(x0);
 

% cf(14);plotNaiveResponse(pulse0IVM,omarP2X4);

% cf(15);plotNaiveResponse(pulse1IVM,omarP2X4);

% cf(16);plotNaiveResponse(pulse3IVM,omarP2X4);

% cf(17);plotNaiveResponse(pulse10IVM,omarP2X4);

% cf(18);plotNaiveResponse(prol3IVM,omarP2X4);

% cf(19);plotNaiveResponse(prol2noIVM,omarP2X4);

 cf(20);chainPrestimDoseResponse(x0,omarP2X4);




 

save(['twalk_omarP2X4_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


