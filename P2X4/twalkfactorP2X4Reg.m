global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
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
fparam('L5')=1;
fparam('L6')=1;
% 
fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;
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

[err1] = normDataErrorOmar(pulse0IVM,factorP2X4,1);
[err2] = normDataErrorOmar(pulse1IVM,factorP2X4,1);
[err3] = normDataErrorOmar(pulse3IVM,factorP2X4,1);
[err4] = normDataErrorOmar(pulse10IVM,factorP2X4,1);
[err5] = normDataErrorOmar(prol3IVM,factorP2X4,1);
[err6] = normDataErrorOmar(prol2noIVM,factorP2X4,1);

errs=regDataError(pulse0IVM,factorP2X4);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    




p = struct('logPrior', @(x) 1, 'logLikelihood',errs,'bounds',bounds);

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
%   [x0,xp0]=twalkStringParse(' H1= [1.95818e-03, 1.96615e-03], H2= [2.02556e-01, 1.78009e-01], H3= [3.03687e-01, 1.85860e-01], H4= [1.08144e-03, 1.00341e-03], L1= [2.49541e+00, 2.80036e+00], L2= [2.32578e+00, 2.19567e+00], L3= [6.59085e-04, 2.01584e-03], L4= [5.46934e-02, 5.72653e-02], L5= [9.56096e-02, 1.17817e-01], L6= [8.75785e-01, 3.18566e-01], delta= [3.33473e-07, 4.06461e-07], epsilon= [2.90326e-06, 2.81301e-06], g1= [3.61434e-08, 3.50696e-08], g2= [1.04661e-07, 1.06373e-07], k1= [1.45741e+00, 1.17882e+00], k2= [3.55330e+05, 4.21743e+05], k3= [7.56687e+00, 3.89367e+00], k4= [1.48771e+07, 7.38057e+06], k5= [4.68220e+00, 8.55549e+00], k6= [5.43046e+07, 6.59183e+07], mu= [7.11190e-06, 7.36433e-06], r1= [8.64351e-01, 7.02829e-01], r2= [4.90090e-01, 3.90001e-01], r3= [2.25290e-01, 2.11687e-01], v1= [2.89545e-01, 7.32128e-02], v2= [8.17484e-02, 7.38413e-02], v3= [1.53695e-02, 6.00725e-03]');

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

cf(4);plotNaiveResponse(pulse0IVM,factorP2X4);

cf(5);plotNaiveResponse(pulse1IVM,factorP2X4);

cf(6);plotNaiveResponse(pulse3IVM,factorP2X4);

cf(7);plotNaiveResponse(pulse10IVM,factorP2X4);

cf(8);plotNaiveResponse(prol3IVM,factorP2X4);

cf(9);plotNaiveResponse(prol2noIVM,factorP2X4);


    
continueChain(x0);
 
cf(14);plotNaiveResponse(pulse0IVM,factorP2X4);

cf(15);plotNaiveResponse(pulse1IVM,factorP2X4);

cf(16);plotNaiveResponse(pulse3IVM,factorP2X4);

cf(17);plotNaiveResponse(pulse10IVM,factorP2X4);

cf(18);plotNaiveResponse(prol3IVM,factorP2X4);

cf(19);plotNaiveResponse(prol2noIVM,factorP2X4);



 

save(['twalk_factorP2X4_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


