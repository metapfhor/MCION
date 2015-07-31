global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();

baseModel= fullP2X7;

paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','r1','r2','kca','koff','C','V','A','n','rd','K4'};

%fparam=oneMap(paramNames{:});
fparam=zeroMap(paramNames{:});%all parameters must be determined
% 
fparam('g12')=1;
% fparam('g1')=1;
fparam('rd')=1;
%fparam('g34')=1;
fparam('E12')=0;
fparam('E34')=0;


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
% fparam('L2')=1;
fparam('K4')=1;
fparam('L3')=1;
% fparam('n')=1;
%  fparam('L1')=1;
% fparam('L5')=1;
% fparam('L6')=1;
% fparam('L4')=0;
% 
% fparam('r1')=0;
% fparam('r2')=0;
% fparam('kca')=0;
% fparam('koff')=0;
% 
% 
% fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;
fparam('H5')=1;
fparam('H6')=1;
fparam('H7')=1;
% % 



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
   pMax('k7')=1;
   pMax('k9')=10;
   pMax('k11')=10;
   pMin('k11')=1e-3;
   pMax('k11')=1000;
   pMax('k12')=10^10;
   pMax('k10')=10^10;
   pMin('rd')=1.5;
   pMax('k6')=1e7;
   pMax('k4')=1e7;
   pMax('k3')=0.5;

[err00,Ncell] = dataEnsembleError(exp1,fullP2X7);
[err0,Ncell] = dataEnsembleError(exp3,fullP2X7);
[err1,Ncell] = dataEnsembleError(exp10,fullP2X7);
[err2,Ncell] = dataEnsembleError(exp32,fullP2X7);
[err3,Ncell]= dataEnsembleError(exp100,fullP2X7);

[err1a,Ncell] = dataEnsembleError(exp10.activation,fullP2X7);
[err2a,Ncell] = dataEnsembleError(exp32.activation,fullP2X7);
[err3a,Ncell]= dataEnsembleError(exp100.activation,fullP2X7);

eHi=@(x) err1(x)+err2(x)+err3(x);
eHia=@(x) err1a(x)+err2a(x)+err3a(x);
eLo=@(x) err00(x)+err0(x);

[x0,bounds] = buildInitialParams();

p = struct('logPrior', @(x) negCoop(x) && dilation(x), 'logLikelihood',@(x) -(2*eLo(x)+eHi(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%  xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end

% [x0,xp0]=twalkStringParse(' H2= [1.07103e-02, 1.02021e-02], H3= [1.71173e-03, 1.44812e-03], H4= [9.44969e-02, 9.78020e-02], H5= [7.08880e-02, 6.91595e-02], H6= [2.46555e-02, 2.11734e-02], H7= [4.61755e-02, 4.50698e-02], K4= [6.67457e+02, 7.90377e+02], L3= [1.46281e+01, 1.52578e+01], g12= [5.19984e-08, 4.89917e-08], k1= [8.87284e-01, 1.19750e+00], k10= [2.76169e+08, 2.64678e+08], k11= [5.25166e+01, 2.62525e+02], k12= [9.58482e+09, 9.85767e+09], k2= [2.84528e+05, 2.15726e+05], k3= [2.40000e+00, 2.70452e+00], k4= [8.13768e+03, 9.84193e+03], k5= [7.19394e+01, 7.65585e+01], k6= [9.71072e+02, 1.41379e+03], k8= [2.04910e+04, 1.88561e+04], k9= [5.43117e-01, 5.05050e-01], rd= [1.17812e+01, 8.12145e+00]');
Niter=20000;
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
 cf(15);plotPanelsResponse(fullP2X7);
 cf(16);plotPanelsActivation(fullP2X7);
    
 continueChain(x0);
 
 cf(13);plotPanelsResponse(fullP2X7);
 
 
 cf(14);plotPanelsActivation(fullP2X7);
 

save(['twalk_full_hi&lo_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


