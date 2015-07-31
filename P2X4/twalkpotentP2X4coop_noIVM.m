global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% fparam('a1')=1;
% fparam('g2')=1;
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


% fparam('v1')=1;
% fparam('v2')=1;
% fparam('v3')=1;
% 
% fparam('r1')=1;
% fparam('r2')=1;
% fparam('r3')=1;
% 


% 
% fparam('L1')=1;
% fparam('L2')=1;
% fparam('L3')=1;
% fparam('L4')=1;
% fparam('L5')=1;
% fparam('L6')=1;
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
% 
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

pMin('k5')=10;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4sub);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4sub);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4sub);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4sub);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4sub);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4sub);

err7 = metricSSE(@ATPDoseResponse,potentP2X4sub,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,potentP2X4sub,I10);
err9 = metricSSE(@ATPDoseResponse30,potentP2X4sub,I30);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4sub);


p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err1(x)+err6(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse(' H1= [2.81038e-04, 3.31524e-04], H2= [2.04867e-01, 1.53301e-01], H3= [1.30284e-01, 1.33574e-01], H4= [1.42748e-03, 1.48026e-03], g1= [4.33860e-08, 3.10938e-08], k1= [1.30138e+00, 9.81343e-01], k2= [2.88843e+05, 2.94525e+05], k3= [4.52635e+00, 5.52942e+00], k4= [3.35614e+07, 4.86561e+07], k5= [2.69604e+02, 2.29538e+02], k6= [8.46027e+07, 8.27139e+07]');

Niter=5000;
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

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4sub);

% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4sub);

% cf(6);plotNaiveResponse(pulse3IVM,potentP2X4sub);

% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4sub);

% cf(8);plotNaiveResponse(prol3IVM,potentP2X4sub);

cf(9);plotNaiveResponse(prol2noIVM,potentP2X4sub);

%  cf(10);chainPrestimDoseResponse(xp0,potentP2X4sub);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potentP2X4sub);

% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4sub);

% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4sub);

% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4sub);

% cf(18);plotNaiveResponse(prol3IVM,potentP2X4sub);

cf(19);plotNaiveResponse(prol2noIVM,potentP2X4sub);

%  cf(20);chainPrestimDoseResponse(x0,potentP2X4sub);




 

save(['twalk_potentP2X4sub_noIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


