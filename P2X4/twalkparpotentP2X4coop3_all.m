global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% fparam('a1')=1;
fparam('g2')=1;
fparam('E1')=0;
fparam('E2')=0;
% 
fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
% 
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



% 
fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;
fparam('L5')=1;
fparam('L6')=1;
% 
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
% % fparam('a1')=1;
% % fparam('a2')=1;
% % fparam('a3')=1;
% 
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
% pMax('k11')=100;
pMax('ku0')=1000;
pMax('ku1')=100;
pMax('ku2')=100;
pMax('ku3')=1000;
pMax('kd0')=10^8;
pMax('kd1')=10^8;



pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,potentP2X4coop3);
[err2] = normDataErrorOmar(pulse1IVM,potentP2X4coop3);
[err3] = normDataErrorOmar(pulse3IVM,potentP2X4coop3);
[err4] = normDataErrorOmar(pulse10IVM,potentP2X4coop3);
[err5] = normDataErrorOmar(prol3IVM,potentP2X4coop3);
[err6] = normDataErrorOmar(prol2noIVM,potentP2X4coop3);

err7 = metricSSE(@ATPDoseResponse,potentP2X4coop3,Icontrol);
err8 = metricSSE(@ATPDoseResponse10,potentP2X4coop3,I10);
err9 = metricSSE(@ATPDoseResponse30,potentP2X4coop3,I30);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(potentP2X4coop3);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6}},'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
   xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
%   [x0,xp0]=twalkStringParse(' L1= [4.34457e+01, 1.01245e+01], L2= [1.60557e+00, 1.41181e+00], L3= [1.01135e-02, 3.15170e-02], L4= [2.68262e-01, 4.36919e-01], L5= [4.51588e-04, 3.21477e-04], L6= [1.54130e+00, 1.08477e+00], a1= [2.30667e+00, 2.05186e+00], a2= [3.75116e+00, 3.12234e+00], a3= [5.60647e+00, 3.67847e+00], alpha= [7.05519e+00, 3.67277e+00], g1= [8.27515e-08, 6.19921e-08], g2= [1.04422e-06, 1.19830e-06], k1= [1.26407e+00, 1.32133e+00], k10= [3.42302e+09, 4.15540e+09], k11= [4.98177e+01, 5.46657e+01], k12= [1.88112e+09, 1.15921e+09], k2= [2.01808e+05, 2.53517e+05], k3= [6.92486e+00, 7.81672e+00], k4= [3.82593e+08, 3.63722e+07], k5= [1.08422e+02, 1.76678e+01], k6= [1.74333e+07, 3.11588e+07], k7= [1.08297e+01, 4.07136e+01], k8= [1.59195e+07, 8.20528e+06], k9= [4.41317e+02, 5.55514e+02], kd0= [2.68849e+04, 1.95691e+04], kd1= [2.67322e+06, 2.88036e+06], kd2= [8.80422e+05, 8.84819e+05], kd3= [3.04052e+05, 6.90753e+05], ku0= [9.85837e+02, 2.98816e+00], ku1= [4.66437e+01, 1.09790e+01], ku2= [4.03974e+00, 3.87259e+01], ku3= [2.26055e+01, 9.97887e+02], r1= [1.94683e+00, 8.28605e-01], r2= [2.51677e+00, 1.32861e+00], r3= [5.63560e-01, 4.61996e-01], rho1= [2.70971e+00, 1.63157e+00], rho2= [4.63126e+00, 2.16685e+00], rho3= [4.67434e+00, 7.79195e+00], v1= [3.80093e-01, 3.30791e-01], v2= [7.53698e-03, 9.28537e-03], v3= [6.72728e-02, 5.91461e-02]');

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
    

 
    
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,potentP2X4coop3);
% 
cf(5);plotNaiveResponse(pulse1IVM,potentP2X4coop3);
% 
cf(6);plotNaiveResponse(pulse3IVM,potentP2X4coop3);

cf(7);plotNaiveResponse(pulse10IVM,potentP2X4coop3);

cf(8);plotNaiveResponse(prol3IVM,potentP2X4coop3);

cf(9);plotNaiveResponse(prol2noIVM,potentP2X4coop3);

%  cf(10);chainPrestimDoseResponse(xp0,potentP2X4coop3);


    
continueChain(x0);
 

cf(14);plotNaiveResponse(pulse0IVM,potentP2X4coop3);

cf(15);plotNaiveResponse(pulse1IVM,potentP2X4coop3);
 
cf(16);plotNaiveResponse(pulse3IVM,potentP2X4coop3);

cf(17);plotNaiveResponse(pulse10IVM,potentP2X4coop3);

cf(18);plotNaiveResponse(prol3IVM,potentP2X4coop3);

cf(19);plotNaiveResponse(prol2noIVM,potentP2X4coop3);

 cf(20);prestimDoseResponses(potentP2X4coop3);




 

save(['twalk_potentP2X4coop3_noIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


