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

% fparam('rho1')=1;
% fparam('rho2')=1;
% fparam('rho3')=1;

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

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4rev);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4rev);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4rev);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4rev);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4rev);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4rev);

err7 = normPrestimDoseError(potentP2X4rev);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4rev);

globalStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam,'Icontrol',Icontrol,'I10',I10,'I30',I30,'prol3IVM',prol3IVM);


p = struct('globalStruct',globalStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6,err7}},'bounds',bounds);

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
% [x0,xp0]=twalkStringParse('H1= [1.30714e-03, 2.20382e-03], H2= [1.72071e-01, 2.46235e-01], H3= [1.46359e-01, 1.30694e-01], H4= [1.69188e-03, 1.65269e-03], L1= [2.12024e-01, 1.80020e-01], L2= [4.11253e-01, 5.05942e-01], L3= [4.20891e-03, 2.75662e-03], L4= [7.80320e-02, 3.96723e-02], L5= [3.24478e-01, 2.91964e-01], L6= [6.01797e+01, 3.50669e+01], a1= [1.00813e+00, 1.23463e+00], a2= [1.27557e+00, 1.78984e+00], a3= [2.75148e+00, 5.64893e+00], alpha= [1.02516e+00, 5.26980e-01], g1= [3.23594e-08, 2.56148e-08], g2= [8.61344e-08, 7.74702e-08], k1= [1.59562e+00, 1.62186e+00], k10= [4.43511e+07, 1.58099e+07], k11= [1.09243e+03, 1.27011e+02], k12= [7.72089e+08, 3.98088e+08], k2= [4.86462e+05, 7.94258e+05], k3= [2.01136e+01, 9.35968e+00], k4= [6.17519e+07, 8.21437e+07], k5= [7.18927e+01, 1.01408e+02], k6= [1.77624e+08, 2.24435e+08], k7= [1.09507e+00, 4.93853e+00], k8= [3.96460e+05, 1.42647e+05], k9= [4.37716e+01, 4.24024e+01], kd0= [1.72722e+09, 1.89733e+09], kd1= [6.12698e+06, 5.02374e+06], kd2= [7.90008e+06, 8.73865e+06], kd3= [7.91658e+03, 2.46238e+03], ku0= [3.71146e-01, 2.24083e-01], ku1= [7.63051e-03, 7.23081e-03], ku2= [5.64417e-02, 5.09206e-03], ku3= [2.13958e+01, 3.53434e+01], r1= [6.66595e-01, 8.31112e-01], r2= [1.60390e+00, 7.18569e+00], r3= [5.61464e-01, 1.17977e+00], v1= [3.05338e-01, 2.25264e-01], v2= [2.20515e-02, 2.01763e-02], v3= [3.14586e-03, 3.16621e-03]');

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

[xxp,lt,acc] = twalkreflect('parLogTarget',Niter,x0,xp0,p);
[x0,xp0] = twalkEnds(xxp);
    

 
% cf(2);chainDistributions(unravelChain(xxp(:,1000:2000)));
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4rev);

cf(5);plotNaiveResponse(pulse1IVM,potentP2X4rev);

cf(6);plotNaiveResponse(pulse3IVM,potentP2X4rev);

cf(7);plotNaiveResponse(pulse10IVM,potentP2X4rev);

cf(8);plotNaiveResponse(prol3IVM,potentP2X4rev);

cf(9);plotNaiveResponse(prol2noIVM,potentP2X4rev);

 cf(10);chainPrestimDoseResponse(xp0,potentP2X4rev);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potentP2X4rev);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4rev);

cf(16);plotNaiveResponse(pulse3IVM,potentP2X4rev);

cf(17);plotNaiveResponse(pulse10IVM,potentP2X4rev);

cf(18);plotNaiveResponse(prol3IVM,potentP2X4rev);

cf(19);plotNaiveResponse(prol2noIVM,potentP2X4rev);

 cf(20);chainPrestimDoseResponse(x0,potentP2X4rev);


% cf(21);prestimDoseResponses(potentP2X4rev);

 

save(['twalk_potentP2X4rev_kinetics' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


