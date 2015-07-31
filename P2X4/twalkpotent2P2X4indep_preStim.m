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
fparam('a2')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;


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

[err1] = normDataErrorOmar(pulse0IVM,potent2P2X4indep);
[err2] = normDataErrorOmar(pulse1IVM,potent2P2X4indep);
[err3] = normDataErrorOmar(pulse3IVM,potent2P2X4indep);
[err4] = normDataErrorOmar(pulse10IVM,potent2P2X4indep);
[err5] = normDataErrorOmar(prol3IVM,potent2P2X4indep);
[err6] = normDataErrorOmar(prol2noIVM,potent2P2X4indep);

err7 = metricSSE(@ATPDoseResponse,potent2P2X4indep,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,potent2P2X4indep,I10);
err9 = metricSSE(@ATPDoseResponse30,potent2P2X4indep,I30);


etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err3(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    
dilation = modelDilation(potent2P2X4indep);



p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err8(x)+err9(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse(' L1= [1.49393e+00, 1.36596e+00], L2= [1.59673e+00, 1.47740e+00], L3= [1.92619e-06, 2.38208e-06], L4= [7.42164e-02, 1.17225e-01], L5= [2.51330e-02, 2.14452e-02], L6= [4.86702e-01, 9.06799e-01], L7= [1.27304e-04, 7.91369e-05], a1= [2.35139e+00, 1.98458e+00], a2= [2.44919e+00, 3.25472e+00], alpha= [3.47294e-02, 4.30095e-02], beta= [8.54648e-01, 1.30383e+00], delta= [1.87676e-07, 1.66675e-07], epsilon= [4.98036e-06, 5.63024e-06], g2= [3.32563e-07, 2.17120e-07], gamma= [1.09471e+00, 1.24841e+00], k10= [4.56035e+07, 4.23184e+07], k11= [2.34732e+01, 4.35896e+01], k12= [5.23956e+07, 3.45929e+07], k13= [8.67309e-02, 2.08282e-01], k14= [2.32116e+08, 1.76281e+07], k15= [1.65187e-01, 5.98330e-02], k16= [4.35371e+09, 2.31985e+07], k17= [3.98585e-01, 2.51269e-01], k18= [1.29817e+09, 6.13423e+08], k19= [7.52935e-01, 1.41369e+00], k20= [8.87561e+04, 7.14848e+05], k21= [1.77228e+00, 2.27832e+00], k22= [7.83220e+06, 9.45956e+06], k23= [3.04595e+00, 9.17926e-01], k24= [2.51261e+07, 1.65896e+07], k7= [1.07733e+01, 1.27926e+01], k8= [3.98349e+06, 2.36418e+06], k9= [1.60757e+01, 3.85226e+00], mu= [3.55581e-06, 3.26848e-06]');

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

%  cf(4);plotNaiveResponse(pulse0IVM,potent2P2X4indep);

% cf(5);plotNaiveResponse(pulse1IVM,potent2P2X4indep);

% cf(6);plotNaiveResponse(pulse3IVM,potent2P2X4indep);
% 
%  cf(7);plotNaiveResponse(pulse10IVM,potent2P2X4indep);

% cf(8);plotNaiveResponse(prol3IVM,potent2P2X4indep);

%  cf(9);plotNaiveResponse(prol2noIVM,potent2P2X4indep);

cf(10);chainPrestimDoseResponse([xp0],potent2P2X4indep);
    
continueChain(x0);
 

% cf(14);plotNaiveResponse(pulse0IVM,potent2P2X4indep);

% cf(15);plotNaiveResponse(pulse1IVM,potent2P2X4indep);

% cf(16);plotNaiveResponse(pulse3IVM,potent2P2X4indep);

% cf(17);plotNaiveResponse(pulse10IVM,potent2P2X4indep);

% cf(18);plotNaiveResponse(prol3IVM,potent2P2X4indep);

% cf(19);plotNaiveResponse(prol2noIVM,potent2P2X4indep);

cf(20);chainPrestimDoseResponse([x0,xp0],potent2P2X4indep);

 

save(['twalk_potent2P2X4indep_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


