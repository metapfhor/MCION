global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','L7','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1','alpha','beta','gamma'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
fparam('a1')=1;
% fparam('a2')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;
% 
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

[err1] = normDataErrorOmar(pulse0IVM,potent1P2X4indep);
[err2] = normDataErrorOmar(pulse1IVM,potent1P2X4indep);
[err3] = normDataErrorOmar(pulse3IVM,potent1P2X4indep);
[err4] = normDataErrorOmar(pulse10IVM,potent1P2X4indep);
[err5] = normDataErrorOmar(prol3IVM,potent1P2X4indep);
[err6] = normDataErrorOmar(prol2noIVM,potent1P2X4indep);

err7 = metricSSE(@ATPDoseResponse,potent1P2X4indep,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,potent1P2X4indep,I10);
err9 = metricSSE(@ATPDoseResponse30,potent1P2X4indep,I30);


etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err3(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    


dilation = modelDilation(potent1P2X4indep);

p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(10*err8(x)+err9(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse('H1= [7.30005e-04, 1.67240e-02], H2= [8.51398e-02, 9.79311e-02], H3= [1.00142e-03, 5.96258e-02], H4= [4.17966e+15, 7.14052e-04], L1= [7.92224e-01, 5.51330e-01], L2= [3.72943e-01, 3.47484e-01], L3= [1.35728e+15, 9.86443e-03], L4= [2.04714e-01, 9.26855e-02], L5= [5.84021e+16, 1.56165e-02], L6= [3.40795e+01, 5.57121e+01], L7= [2.80468e+13, 2.42795e-04], a1= [2.10098e+00, 5.33766e-01], alpha= [1.42440e-04, 9.36564e-05], beta= [2.53277e+00, 4.92606e+00], delta= [6.18224e-07, 4.15918e-07], epsilon= [3.09095e-06, 3.63710e-06], g2= [2.80568e-07, 1.70680e-07], gamma= [5.21182e+00, 4.18417e+00], k1= [1.63754e+01, 5.08969e+00], k10= [1.47619e+08, 1.66695e+07], k11= [2.22426e+09, 1.25196e+00], k12= [7.93135e+06, 9.46620e+06], k13= [5.86560e+00, 1.68126e+00], k14= [2.34951e+13, 1.30022e+08], k15= [7.36001e+14, 4.49152e-02], k16= [5.94203e+11, 4.52489e+11], k17= [7.46342e-01, 4.58857e-01], k18= [9.65843e+09, 1.11451e+10], k19= [4.59442e+01, 4.60259e+00], k2= [1.40206e+06, 8.96214e+05], k20= [6.76932e+04, 3.74926e+05], k21= [4.46420e-01, 7.20014e-01], k22= [4.28070e+14, 1.01452e+06], k23= [1.48893e+00, 7.80214e-01], k24= [1.46985e+15, 7.64386e+06], k3= [1.72389e+01, 1.33117e+01], k4= [2.14485e+07, 1.85547e+07], k5= [2.99174e+01, 7.95322e+01], k6= [7.76104e+07, 1.09399e+08], k7= [2.73094e+00, 1.96173e+00], k8= [2.50967e+06, 1.55588e+07], k9= [1.01307e-02, 4.97198e-02], mu= [9.13833e-06, 9.10973e-06]');

Niter=500;
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

%  cf(4);plotNaiveResponse(pulse0IVM,potent1P2X4indep);

% cf(5);plotNaiveResponse(pulse1IVM,potent1P2X4indep);

% cf(6);plotNaiveResponse(pulse3IVM,potent1P2X4indep);
% 
%  cf(7);plotNaiveResponse(pulse10IVM,potent1P2X4indep);

% cf(8);plotNaiveResponse(prol3IVM,potent1P2X4indep);

%  cf(9);plotNaiveResponse(prol2noIVM,potent1P2X4indep);

cf(10);chainPrestimDoseResponse([xp0],potent1P2X4indep);
    
continueChain(x0);
 

% cf(14);plotNaiveResponse(pulse0IVM,potent1P2X4indep);

% cf(15);plotNaiveResponse(pulse1IVM,potent1P2X4indep);

% cf(16);plotNaiveResponse(pulse3IVM,potent1P2X4indep);

% cf(17);plotNaiveResponse(pulse10IVM,potent1P2X4indep);

% cf(18);plotNaiveResponse(prol3IVM,potent1P2X4indep);

% cf(19);plotNaiveResponse(prol2noIVM,potent1P2X4indep);

cf(20);chainPrestimDoseResponse([x0,xp0],potent1P2X4indep);

 

save(['twalk_potent1P2X4indep_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


