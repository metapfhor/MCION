global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1','a2'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
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
% fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
% fparam('r3')=1;


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
% fparam('L5')=1;
% fparam('L6')=1;
% 
% fparam('H1')=1;
% fparam('H2')=1;
% % fparam('H3')=1;
% fparam('H4')=1;
% 
% fparam('V')=0;
% fparam('epsilon')=1;
% fparam('delta')=1;
% fparam('mu')=1;

fparam('alpha')=1;
fparam('beta')=1;
fparam('gamma')=1;

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

pMin('k5')=100;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,factorP2X4coop);
[err2] = normDataErrorOmar(pulse1IVM,factorP2X4coop);
[err3] = normDataErrorOmar(pulse3IVM,factorP2X4coop);
[err4] = normDataErrorOmar(pulse10IVM,factorP2X4coop);
[err5] = normDataErrorOmar(prol3IVM,factorP2X4coop);
[err6] = normDataErrorOmar(prol2noIVM,factorP2X4coop);


err7 = metricSSE(@ATPDoseResponse,factorP2X4coop,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,factorP2X4coop,I10);
err9 = metricSSE(@ATPDoseResponse30,factorP2X4coop,I30);

etot = @(x) 1000*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);
emed = @(x) err2(x)+err3(x)+err5(x);
eivm = @(x) err2(x)+err3(x)+err4(x)+err5(x);
epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    


intern = modelIntern(factorP2X4coop);
coop = modelCoop(factorP2X4coop);

p = struct('logPrior', @(x) intern(x) & coop(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end

if exist('xp0','var')==0 || ~all(size(x0)==size(xp0))
   xp0 = x0.*(1+0.4*randn(size(x0)));
end
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse(' L1= [4.31708e+01, 4.10722e+01], L2= [7.73722e+00, 5.40569e+00], L3= [4.58017e-03, 2.06632e-03], L4= [5.03862e-02, 2.90293e-02], alpha= [1.28618e-01, 3.30856e-01], beta= [1.60310e+00, 1.39782e+00], g2= [1.42556e-07, 2.18542e-07], gamma= [1.83512e+00, 2.80596e+00], k1= [9.47182e-01, 1.42095e+00], k2= [4.28127e+05, 3.76747e+05], k3= [2.66939e+00, 5.42123e+00], k4= [3.19677e+07, 4.40812e+07], k5= [3.09315e+02, 4.41331e+02], k6= [7.19616e+07, 4.62744e+07], r1= [4.08245e-01, 3.67585e-01], r2= [8.51883e-01, 1.01180e+00], v1= [8.14513e-01, 5.01451e-01], v2= [1.48956e-01, 1.36963e-01]');

Niter=3000;

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
% 
% cf(4);plotNaiveResponse(pulse0IVM,factorP2X4coop);

cf(5);plotNaiveResponse(pulse1IVM,factorP2X4coop);

cf(6);plotNaiveResponse(pulse3IVM,factorP2X4coop);
% 
% cf(7);plotNaiveResponse(pulse10IVM,factorP2X4coop);
% 
cf(8);plotNaiveResponse(prol3IVM,factorP2X4coop);
% 
% cf(9);plotNaiveResponse(prol2noIVM,factorP2X4coop);

 cf(10);chainPrestimDoseResponse(xp0,factorP2X4coop);

    
continueChain(x0);
 
% cf(14);plotNaiveResponse(pulse0IVM,factorP2X4coop);
% 
cf(15);plotNaiveResponse(pulse1IVM,factorP2X4coop);

cf(16);plotNaiveResponse(pulse3IVM,factorP2X4coop);
% 
% cf(17);plotNaiveResponse(pulse10IVM,factorP2X4coop);
% 
cf(18);plotNaiveResponse(prol3IVM,factorP2X4coop);
% 
% cf(19);plotNaiveResponse(prol2noIVM,factorP2X4coop);
% 

 cf(20);chainPrestimDoseResponse(x0,factorP2X4coop);
 

save(['twalk_factorP2X4coop_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


