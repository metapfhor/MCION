global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();

baseModel= phosph2P2X7;

paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','H5','H6','H7','g1','gd','E12','E34','r1','r2','kca','koff','C','V','A','n'};

%fparam=oneMap(paramNames{:});
fparam=zeroMap(paramNames{:});%all parameters must be determined
% 
fparam('g0')=1;
% fparam('g1')=1;
fparam('gd')=1;
fparam('E12')=0;
fparam('E34')=0;


fparam('k1')=1;
fparam('k2')=1;
% fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
fparam('k7')=1;
fparam('k8')=1;
fparam('k9')=1;
fparam('k10')=1;
fparam('k11')=1;
fparam('k12')=1;
fparam('L2')=1;
fparam('L3')=1;
% fparam('n')=1;
%  fparam('L1')=1;
fparam('L5')=1;
fparam('L6')=1;
% fparam('L4')=0;
% 
% fparam('r1')=0;
% fparam('r2')=0;
% fparam('kca')=0;
% fparam('koff')=0;
% 
% 
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
% fparam('H5')=1;
% fparam('H6')=1;
% fparam('H7')=1;
% 



   pMin('L3')=1e-2;
   pMax('L3')=500;
   pMax('L2')=500;
   pMin('L2')=1e-5;
   pMax('L5')=100;
   pMax('L6')=10;
   pMin('n')=1;
   pMax('n')=15;
   pMin('g0')=1e-12;
   pMax('g0')=10^-5;
   pMin('g1')=1e-10;
   pMax('g1')=10^-5;
   pMin('k1')=10^-2;
   pMax('k1')=10;
   pMin('k10')=1e4;
   pMin('k12')=1e4;
   pMin('k8')=10;
   pMin('k7')=0.09;
   pMax('k7')=10;
   pMax('k9')=10;
   pMax('k11')=10;
   pMin('k11')=1e-3;
   pMax('k11')=1000;
   pMax('k12')=10^10;
   pMax('k10')=10^10;

   pMax('k6')=1e7;
   pMax('k4')=1e7;
   pMax('k3')=0.5;

[err00,Ncell] = dataEnsembleError(exp1,phosph2P2X7);
[err0,Ncell] = dataEnsembleError(exp3,phosph2P2X7);
[err1,Ncell] = dataEnsembleError(exp10,phosph2P2X7);
[err2,Ncell] = dataEnsembleError(exp32,phosph2P2X7);
[err3,Ncell]= dataEnsembleError(exp100,phosph2P2X7);

[err1a,Ncell] = dataEnsembleError(exp10.activation,phosph2P2X7);
[err2a,Ncell] = dataEnsembleError(exp32.activation,phosph2P2X7);
[err3a,Ncell]= dataEnsembleError(exp100.activation,phosph2P2X7);

eHi=@(x) err1(x)+err2(x)+err3(x);
eHia=@(x) err1a(x)+err2a(x)+err3a(x);
eLo=@(x) err00(x)+err0(x);

[x0,bounds] = buildInitialParams();

p = struct('logPrior', @(x) negCoop(x) && dilation(x), 'logLikelihood',@(x) -(eLo(x)+eHi(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%       xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end

%  [x0,xp0]=twalkStringParse(' L2= [1.86323e+02, 2.82647e+01], L3=[4.97003e+02, 3.61708e+02], L5= [7.33937e+01, 7.90130e+01], L6= [2.15383e-04, 1.56710e-03], g0= [6.24829e-11, 1.35996e-10], gd= [4.62969e-08, 5.46640e-08], k1= [9.46214e+00, 9.62292e+00], k10= [2.48119e+06, 5.20691e+05], k11= [9.97751e+02, 4.56332e+02], k12= [8.20464e+04, 1.02244e+05], k2= [6.23569e+09, 7.64376e+09], k4= [3.43309e+04, 2.37184e+04], k5= [1.36440e-02, 2.10944e-02], k6= [9.57729e+03, 1.24264e+04], k7= [6.67736e+00, 7.68179e+00], k8= [9.18748e+05, 1.04193e+06], k9= [9.09477e+00, 9.50216e+00]')

Niter=1000;
Nplot=100;


hold off

%  cf(13);
% cf(14);
% for count = 1:ceil(Niter/Nplot)
%     [xxp,lt,acc] = twalkparam('logTarget',Nplot,x0,xp0,p); 
%     [x0,xp0] = twalkEnds(xxp);
%     continueChain(x0);
% 	figure(13);plotPanelsResponse(phosph2P2X7);
% % 	plotPanelsActivation(phosph2P2X7);
%     continueChain(xp0);
%     figure(14);plotPanelsResponse(phosph2P2X7);
%     drawnow
% 
% 	
% end

disp(['Initial Parameters:', tchainString(x0,xp0)])

    [xxp,lt,acc] = twalkreflect('logTarget',Niter,x0,xp0,p);
    [x0,xp0] = twalkEnds(xxp);
    
    
    
 continueChain(xp0);
 cf(15);plotPanelsResponse(phosph2P2X7);
 cf(16);plotPanelsActivation(phosph2P2X7);
    
 continueChain(x0);
 cf(13);plotPanelsResponse(phosph2P2X7);
 cf(14);plotPanelsActivation(phosph2P2X7);
 
 


save(['twalk_phosp2_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


