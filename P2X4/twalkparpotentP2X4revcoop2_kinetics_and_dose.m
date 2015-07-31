global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r1','r3','r2','v1','v3','v2','a1','rho1','rho2','rho3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% fparam('a1')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;

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
fparam('L5')=1;
fparam('L6')=1;

fparam('ku0')=1;
fparam('kd0')=1;
fparam('ku1')=1;
fparam('kd1')=1;
fparam('ku2')=1;
fparam('kd2')=1;
fparam('ku3')=1;
fparam('kd3')=1;
fparam('alpha')=1;

fparam('a1')=1;
fparam('a2')=1;
fparam('a3')=1;

fparam('rho1')=1;
fparam('rho2')=1;
fparam('rho3')=1;

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

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4revcoop2);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4revcoop2);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4revcoop2);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4revcoop2);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4revcoop2);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4revcoop2);

err7 = normPrestimDoseError(potentP2X4revcoop2);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4revcoop2);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6,err7}},'bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.2*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse(' H1= [2.95249e-04, 3.13657e-03], H2= [1.70957e-01, 1.08603e-01], H3= [1.20557e-01, 5.94435e-02], H4= [1.39455e-03, 3.13360e-03], L1= [2.10470e-01, 1.83201e+00], L2= [4.92731e-01, 6.92256e-01], L3= [4.62686e-03, 3.94657e-03], L4= [4.90141e-02, 3.15703e-02], L5= [2.43438e-01, 3.10177e-01], L6= [1.50304e+02, 4.31475e+01], a1= [1.00813e+00, 1.64195e+00], a2= [1.44455e+00, 2.79846e+00], a3= [3.33674e+00, 3.30831e+00], alpha= [6.03782e-01, 7.69498e-01], g1= [3.23594e-08, 2.36002e-08], g2= [8.61344e-08, 5.93531e-08], k1= [5.18922e+00, 9.26316e+00], k10= [5.08768e+07, 6.17778e+07], k11= [9.54493e+03, 3.99175e+03], k12= [1.49026e+08, 2.62510e+07], k2= [6.75427e+05, 1.29154e+06], k3= [2.48878e+01, 2.29038e+01], k4= [4.16457e+07, 5.75401e+07], k5= [5.09527e+01, 7.41479e+01], k6= [1.76861e+08, 1.55030e+08], k7= [3.82526e+00, 2.79146e+00], k8= [2.90278e+05, 8.96259e+05], k9= [3.83223e+01, 4.28693e+01], kd0= [2.54127e+09, 1.54521e+09], kd1= [1.68388e+07, 1.52962e+07], kd2= [1.17567e+07, 3.36652e+06], kd3= [3.71238e+03, 5.15271e+03], ku0= [3.91588e-01, 3.90871e-01], ku1= [7.61911e-03, 7.60726e-03], ku2= [9.09837e-02, 8.35055e-02], ku3= [4.34832e+01, 4.44043e+00], r1= [4.08721e-01, 4.94769e-01], r2= [1.47071e+00, 2.18143e+00], r3= [5.49333e-01, 5.34043e-01], rho1= [5.39303e-02, 9.20536e+00], rho2= [1.36881e+01, 1.31109e+01], rho3= [2.86109e+01, 1.96677e+01], v1= [1.75660e-01, 3.35018e-01], v2= [1.67098e-02, 1.09478e-02], v3= [3.96003e-03, 2.20678e-03]');

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

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4revcoop2);

cf(5);plotNaiveResponse(pulse1IVM,potentP2X4revcoop2);

cf(6);plotNaiveResponse(pulse3IVM,potentP2X4revcoop2);

cf(7);plotNaiveResponse(pulse10IVM,potentP2X4revcoop2);

cf(8);plotNaiveResponse(prol3IVM,potentP2X4revcoop2);

cf(9);plotNaiveResponse(prol2noIVM,potentP2X4revcoop2);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4revcoop2);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potentP2X4revcoop2);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4revcoop2);

cf(16);plotNaiveResponse(pulse3IVM,potentP2X4revcoop2);

cf(17);plotNaiveResponse(pulse10IVM,potentP2X4revcoop2);

cf(18);plotNaiveResponse(prol3IVM,potentP2X4revcoop2);

cf(19);plotNaiveResponse(prol2noIVM,potentP2X4revcoop2);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4revcoop2);


% cf(21);prestimDoseResponses(potentP2X4revcoop2);

 

save(['twalk_potentP2X4revcoop2_kinetics' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


