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

fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;

% fparam('v1')=1;
% fparam('v2')=1;
% fparam('v3')=1;

% fparam('r1')=1;
% fparam('r2')=1;
% fparam('r3')=1;



% 
% fparam('L1')=1;
% fparam('L2')=1;
% fparam('L3')=1;
% fparam('L4')=1;
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
pMax('mu')=1e-5;
pMax('H2')=0.7;
pMax('H1')=0.01;
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

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 70*err1(x)+err6(x);
emed =@(x) err2(x)+err3(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    




p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(enoivm(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse('H1= [1.66927e-01, 1.53460e-01], H2= [4.55845e-01, 4.18719e-01], H3= [1.64240e-01, 1.58554e-01], H4= [6.80899e-04, 6.45019e-04], k1= [3.66745e+02, 3.62372e+00], k2= [3.55819e+09, 5.01138e+08], k3= [2.94430e-01, 5.34353e-01], k4= [8.14972e+04, 8.36331e+04], k5= [2.06160e+05, 2.32699e+05], k6= [7.76219e+08, 8.62807e+08]');

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

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4);

% cf(5);plotNaiveResponse(pulse1IVM,potentP2X4);

% cf(6);plotNaiveResponse(pulse3IVM,potentP2X4);

% cf(7);plotNaiveResponse(pulse10IVM,potentP2X4);

cf(8);plotNaiveResponse(prol3IVM,potentP2X4);

cf(9);plotNaiveResponse(prol2noIVM,potentP2X4);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potentP2X4);

% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4);

% cf(16);plotNaiveResponse(pulse3IVM,potentP2X4);

% cf(17);plotNaiveResponse(pulse10IVM,potentP2X4);

cf(18);plotNaiveResponse(prol3IVM,potentP2X4);

cf(19);plotNaiveResponse(prol2noIVM,potentP2X4);



 

save(['twalk_potentP2X4_NoIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


