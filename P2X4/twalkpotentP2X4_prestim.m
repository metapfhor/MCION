global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
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

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;



% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;

fparam('ku0')=1;
fparam('kd0')=1;
fparam('ku1')=1;
fparam('kd1')=1;
fparam('ku2')=1;
fparam('kd2')=1;
fparam('ku3')=1;
fparam('kd3')=1;
fparam('alpha')=1;

fparam('a1')=1;
fparam('a2')=1;
fparam('a3')=1;

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

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4);

err7 = metricSSE(@ATPDoseResponse,potentP2X4,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,potentP2X4,I10);
err9 = metricSSE(@ATPDoseResponse30,potentP2X4,I30);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4);


p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse('H1= [3.01924e-04, 3.01924e-04], H2= [2.10915e-01, 2.10915e-01], H3= [1.43250e-01, 1.43250e-01], H4= [1.41009e-03, 1.41009e-03], L1= [1.64551e+01, 7.65392e+00], L2= [7.85504e-01, 6.24923e-01], L3= [2.06702e-02, 4.46753e-02], L4= [7.03757e-02, 1.02987e-01], L5= [3.72313e-02, 2.01174e-01], L6= [2.59994e+00, 2.59994e+00], a1= [1.55648e+00, 1.86261e+00], a2= [1.60849e+00, 1.92019e+00], a3= [2.48696e+00, 2.20642e+00], alpha= [1.76827e-05, 3.08368e-05], g1= [3.69000e-08, 3.69000e-08], g2= [1.03959e-06, 5.60523e-07], k1= [2.02909e+00, 2.02909e+00], k2= [3.89355e+05, 3.89355e+05], k3= [5.23404e+00, 5.23404e+00], k4= [3.76527e+07, 3.76527e+07], k5= [2.86720e+02, 2.86720e+02], k6= [8.78754e+07, 8.78754e+07], kd0= [9.29159e+06, 9.29159e+06], kd1= [9.29161e+06, 9.29159e+06], kd2= [9.29159e+06, 9.29159e+06], kd3= [9.29159e+06, 9.29159e+06], ku0= [3.63190e+00, 3.63190e+00], ku1= [3.63190e+00, 3.63190e+00], ku2= [3.63190e+00, 3.63190e+00], ku3= [1.52485e+01, 1.51415e+01], r1= [3.33580e+00, 2.76738e+00], r2= [1.82750e+00, 2.85795e+00], r3= [1.08016e-01, 1.08016e-01], v1= [1.14129e-01, 1.15113e-01], v2= [2.26250e-02, 1.66767e-03], v3= [2.17997e-02, 2.17997e-02]');

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

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4);

% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4);

% cf(6);plotNaiveResponse(pulse3IVM,potentP2X4);

% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4);

% cf(8);plotNaiveResponse(prol3IVM,potentP2X4);

% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4);


    
continueChain(x0);
 

% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4);

% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4);

% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4);

% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4);

% cf(18);plotNaiveResponse(prol3IVM,potentP2X4);

% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4);


cf(30); cf(20);chainPrestimDoseResponse([x0,xp0],factorP2X4);

 

save(['twalk_potentP2X4_Med' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


