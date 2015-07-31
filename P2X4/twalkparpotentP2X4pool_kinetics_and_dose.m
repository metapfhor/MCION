global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin globalStruct;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

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

% fparam('k7')=1;
% fparam('k8')=1;
% fparam('k9')=1;
% fparam('k10')=1;
% fparam('k11')=1;
% fparam('k12')=1;

fparam('v1')=1;
fparam('v2')=1;
fparam('v3')=1;

fparam('r1')=1;
fparam('r2')=1;
fparam('r3')=1;


fparam('w1')=1;
fparam('w2')=1;
fparam('w3')=1;

fparam('s1')=1;
fparam('s2')=1;
fparam('s3')=1;

fparam('kd')=1;
fparam('ku')=1;


% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;

% fparam('ku0')=1;
% fparam('kd0')=1;
% fparam('ku1')=1;
% fparam('kd1')=1;
% fparam('ku2')=1;
% fparam('kd2')=1;
% fparam('ku3')=1;
% fparam('kd3')=1;
% fparam('alpha')=1;
% 
% fparam('a1')=1;
% fparam('a2')=1;
% fparam('a3')=1;

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

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4pool);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4pool);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4pool);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4pool);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4pool);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4pool);

err7 = normPrestimDoseError(potentP2X4pool);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4pool);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) poolDilation(x), 'logLikelihood',{{err1,@(x) 10000*err7(x)}},'bounds',bounds);

% p = struct('logPrior', @(x) dilation(x), 'logLikelihood',@(x) -(err7(x)+err8(x)+err9(x)),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
[x0,xp0]=twalkStringParse(' H1= [3.36944e-06, 2.80288e-06], H2= [6.64155e-01, 7.12251e-01], H3= [2.92542e-02, 4.72961e-02], H4= [4.73290e-03, 3.97435e-03], L1= [1.43537e+01, 2.83184e+01], L2= [2.49036e-01, 5.51540e-01], L3= [3.82011e-02, 2.47866e-02], L4= [2.24955e-02, 1.29763e-02], L5= [2.90102e-02, 3.99197e-02], L6= [3.98780e-01, 1.10250e+00], g1= [3.49865e-08, 4.79904e-08], g2= [6.32953e-08, 8.51616e-08], k1= [1.51791e+01, 2.17070e+01], k2= [4.06255e+06, 5.62783e+06], k3= [3.13617e+01, 1.46356e+01], k4= [1.05975e+08, 4.07537e+07], k5= [1.01145e+02, 6.22664e+01], k6= [1.48782e+07, 1.45783e+07], kd= [8.04177e+06, 8.13067e+06], ku= [2.70018e-02, 2.32316e-02], r1= [6.00028e+01, 5.90680e+01], r2= [5.11683e+00, 2.33444e+00], r3= [5.07484e+00, 5.22329e+00], rho1= [8.59349e-02, 1.48237e-01], rho2= [2.47928e-01, 4.17680e-02], rho3= [1.01996e+00, 5.99417e-01], s1= [1.63134e+00, 1.85490e+00], s2= [1.94905e+00, 3.04752e+00], s3= [1.05935e+00, 2.90463e+00], v1= [6.31928e-01, 3.99762e-01], v2= [1.17522e-02, 8.43881e-03], v3= [3.91416e-05, 7.51549e-04], w1= [8.81460e-01, 9.27336e-01], w2= [1.11573e-01, 1.04508e-01], w3= [7.03527e-04, 4.91447e-04]');

Niter=8000;
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

% cf(4);plotNaiveResponse(pulse0IVM,potentP2X4pool);
% 
cf(5);plotNaiveResponse(pulse1IVM,potentP2X4pool);
% 
cf(6);plotNaiveResponse(pulse3IVM,potentP2X4pool);
% 
cf(7);plotNaiveResponse(pulse10IVM,potentP2X4pool);
% 
% cf(8);plotNaiveResponse(prol3IVM,potentP2X4pool);
% 
% cf(9);plotNaiveResponse(prol2noIVM,potentP2X4pool);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4pool);


    
continueChain(x0);
%  
% 
% cf(14);plotNaiveResponse(pulse0IVM,potentP2X4pool);
% 
% cf(15);plotNaiveResponse(pulse1IVM,potentP2X4pool);
% 
cf(16);plotNaiveResponse(pulse3IVM,potentP2X4pool);
% 
cf(17);plotNaiveResponse(pulse10IVM,potentP2X4pool);
% 
cf(18);plotNaiveResponse(prol3IVM,potentP2X4pool);
% 
% cf(19);plotNaiveResponse(prol2noIVM,potentP2X4pool);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4pool);


% cf(21);prestimDoseResponses(potentP2X4pool);

 

save(['twalk_potentP2X4pool_kinetics' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


