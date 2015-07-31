global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

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

% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;


fparam('w1')=1;
fparam('w2')=1;
fparam('w3')=1;

fparam('s1')=1;
fparam('s2')=1;
fparam('s3')=1;

fparam('kd')=1;
fparam('ku')=1;


% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;

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

fparam('rho1')=1;
fparam('rho2')=1;
fparam('rho3')=1;

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

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4pool);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4pool);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4pool);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4pool);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4pool);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4pool);

err7 = normPrestimDoseError(potentP2X4pool);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4pool);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) poolDilation(x), 'logLikelihood','normPrestimDoseErrorpotentP2X4pool','bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse('L1= [4.78046e+01, 2.71937e+01], L2= [2.29685e-01, 1.57709e-01], L3= [2.10053e-02, 1.96468e-02], L4= [5.25641e-02, 4.04918e-02], L5= [1.40685e-01, 1.34850e-01], L6= [7.69612e-01, 6.22034e-01], g2= [6.08575e-08, 6.09584e-08], kd= [6.26866e+06, 6.41794e+06], ku= [1.24007e-02, 1.20422e-02], r1= [2.96680e+00, 1.66154e+00], r2= [3.73846e-01, 3.29771e-01], r3= [4.35893e+01, 1.65361e+01], s1= [1.32495e+00, 1.61622e+00], s2= [1.73863e+00, 1.70749e+00], s3= [1.32040e-01, 2.01934e-01], v1= [7.51501e-01, 8.02478e-01], v2= [4.30999e-03, 5.88817e-03], v3= [1.34175e-04, 7.96133e-05], w1= [5.39828e-01, 9.29705e-01], w2= [7.20561e-02, 6.96022e-02], w3= [1.66546e-04, 2.93769e-04]');

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
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4pool);
% 
% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4pool);
% 
% cf(6);plotNaiveResponse(pulse3IVM,potentP2X4pool);
% 
% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4pool);
% 
% cf(8);plotNaiveResponse(prol3IVM,potentP2X4pool);
% 
% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4pool);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4pool);


    
continueChain(x0);
%  
% 
% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4pool);
% 
% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4pool);
% 
% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4pool);
% 
% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4pool);
% 
% cf(18);plotNaiveResponse(prol3IVM,potentP2X4pool);
% 
% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4pool);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4pool);


% cf(21);prestimDoseResponses(potentP2X4pool);

 

save(['twalk_potentP2X4pool_kinetics' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


