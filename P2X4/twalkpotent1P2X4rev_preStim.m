global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','L7','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1','a2'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
fparam('a1')=1;
% fparam('a2')=1;
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
% 
fparam('L5')=1;
fparam('L6')=1;
fparam('L7')=1;
% 
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% 
% fparam('V')=0;
fparam('epsilon')=1;
fparam('delta')=1;
fparam('mu')=1;
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

[err1] = normDataErrorOmar(pulse0IVM,potent1P2X4rev);
[err2] = normDataErrorOmar(pulse1IVM,potent1P2X4rev);
[err3] = normDataErrorOmar(pulse3IVM,potent1P2X4rev);
[err4] = normDataErrorOmar(pulse10IVM,potent1P2X4rev);
[err5] = normDataErrorOmar(prol3IVM,potent1P2X4rev);
[err6] = normDataErrorOmar(prol2noIVM,potent1P2X4rev);

err7 = metricSSE(@ATPDoseResponse,potent1P2X4rev,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,potent1P2X4rev,I10);
err9 = metricSSE(@ATPDoseResponse30,potent1P2X4rev,I30);


etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err3(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
dilation = modelDilation(potent1P2X4rev);



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
    xp0 = x0.*(1+0.002*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse(' L1= [2.01452e+00, 1.51900e+00], L2= [2.55632e+00, 3.68178e+00], L3= [4.05811e-03, 3.62051e-03], L4= [3.56448e-02, 2.44539e-02], L5= [5.73206e-02, 8.41927e-01], L6= [8.40605e+01, 6.61532e+01], a1= [1.87356e+00, 1.81293e+00], a2= [2.33246e+00, 1.84459e+00], delta= [9.59979e-07, 8.47120e-07], epsilon= [2.67904e-06, 1.87697e-06], g2= [9.89846e-08, 9.58669e-08], k1= [1.33796e+00, 2.87685e-01], k2= [3.33235e+05, 3.22619e+05], k3= [1.12892e+01, 1.04793e+01], k4= [2.71606e+07, 2.78417e+07], k5= [5.56610e+00, 7.46199e+00], k6= [1.26976e+07, 5.92120e+07], mu= [5.40054e-06, 7.96146e-06], r1= [6.70424e+00, 3.79227e+00], r2= [6.64148e-01, 5.19571e-01], r3= [1.41164e-01, 2.13216e-01], v1= [3.51139e+00, 6.11130e+00], v2= [4.95362e-02, 2.46516e-02], v3= [1.84721e-02, 1.14293e-02]');

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

%  cf(4);plotNaiveResponse(pulse0IVM,potent1P2X4rev);

% cf(5);plotNaiveResponse(pulse1IVM,potent1P2X4rev);

% cf(6);plotNaiveResponse(pulse3IVM,potent1P2X4rev);
% 
%  cf(7);plotNaiveResponse(pulse10IVM,potent1P2X4rev);

% cf(8);plotNaiveResponse(prol3IVM,potent1P2X4rev);

%  cf(9);plotNaiveResponse(prol2noIVM,potent1P2X4rev);

cf(10);chainPrestimDoseResponse([xp0],potent1P2X4rev);
    
continueChain(x0);
 

% cf(14);plotNaiveResponse(pulse0IVM,potent1P2X4rev);

% cf(15);plotNaiveResponse(pulse1IVM,potent1P2X4rev);

% cf(16);plotNaiveResponse(pulse3IVM,potent1P2X4rev);

% cf(17);plotNaiveResponse(pulse10IVM,potent1P2X4rev);

% cf(18);plotNaiveResponse(prol3IVM,potent1P2X4rev);

% cf(19);plotNaiveResponse(prol2noIVM,potent1P2X4rev);

cf(20);chainPrestimDoseResponse([x0],potent1P2X4rev);

 

save(['twalk_potent1P2X4rev_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


