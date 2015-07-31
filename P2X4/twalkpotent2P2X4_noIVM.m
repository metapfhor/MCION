global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1','a2'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% fparam('a1')=1;
% fparam('a2')=1;
% fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
% 
% fparam('v1')=1;
% fparam('v2')=1;
% fparam('v3')=1;
% 
% fparam('r1')=1;
% fparam('r2')=1;
% fparam('r3')=1;



% 
% fparam('L1')=1;
% fparam('L2')=1;
% fparam('L3')=1;
% fparam('L4')=1;
% % 
% fparam('L5')=1;
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

[err1] = normDataErrorOmar(pulse0IVM,potent2P2X4sub);
[err2] = normDataErrorOmar(pulse1IVM,potent2P2X4);
[err3] = normDataErrorOmar(pulse3IVM,potent2P2X4);
[err4] = normDataErrorOmar(pulse10IVM,potent2P2X4);
[err5] = normDataErrorOmar(prol3IVM,potent2P2X4);
[err6] = normDataErrorOmar(prol2noIVM,potent2P2X4sub);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err3(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    




p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(enoivm(x)),'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse('H1= [2.13539e-03, 2.28810e-03], H2= [2.16479e-01, 2.10897e-01], H3= [9.65318e-02, 9.75167e-02], H4= [1.28799e-03, 1.10258e-03], g1= [3.63358e-08, 3.71058e-08], k1= [1.21096e+00, 1.04250e+00], k2= [3.26639e+05, 3.31506e+05], k3= [7.26120e+00, 9.04634e+00], k4= [1.91580e+07, 1.69198e+07], k5= [4.38114e+00, 3.83708e+00], k6= [7.66352e+07, 5.60659e+07]');

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

 cf(4);plotNaiveResponse(pulse0IVM,potent2P2X4sub);

% cf(5);plotNaiveResponse(pulse1IVM,potent2P2X4);
% 
% cf(6);plotNaiveResponse(pulse3IVM,potent2P2X4);
% 
%  cf(7);plotNaiveResponse(pulse10IVM,potent2P2X4);
% 
% cf(8);plotNaiveResponse(prol3IVM,potent2P2X4);

 cf(9);plotNaiveResponse(prol2noIVM,potent2P2X4sub);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potent2P2X4sub);
% 
% cf(15);plotNaiveResponse(pulse1IVM,potent2P2X4);
% 
% cf(16);plotNaiveResponse(pulse3IVM,potent2P2X4);
% 
% % cf(17);plotNaiveResponse(pulse10IVM,potent2P2X4);
% 
% cf(18);plotNaiveResponse(prol3IVM,potent2P2X4);

cf(19);plotNaiveResponse(prol2noIVM,potent2P2X4sub);



 

save(['twalk_potent2P2X4_noIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


