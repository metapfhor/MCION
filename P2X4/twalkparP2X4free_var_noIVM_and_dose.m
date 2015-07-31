global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
fparam('g1')=1;
% % fparam('a1')=1;
fparam('g2')=1;
% fparam('E1')=0;
% fparam('E2')=0;
% % 
fparam('k1')=1;
fparam('k2')=1;
fparam('k3')=1;
fparam('k4')=1;
fparam('k5')=1;
fparam('k6')=1;
%  
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
%  
fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;



% 
fparam('L11')=1;
fparam('L12')=1;
fparam('L13')=1;
fparam('L14')=1;

fparam('L21')=1;
fparam('L22')=1;
fparam('L23')=1;
fparam('L24')=1;

fparam('L31')=1;
fparam('L32')=1;
fparam('L33')=1;
fparam('L34')=1;

fparam('L41')=1;
fparam('L42')=1;
fparam('L43')=1;
fparam('L44')=1;
% 
% fparam('L51')=1;
% fparam('L52')=1;
% fparam('L53')=1;
% fparam('L54')=1;
% 
% fparam('L61')=1;
% fparam('L62')=1;
% fparam('L63')=1;
% fparam('L64')=1;

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

pMax('L11')=10;
pMax('L12')=10;
pMax('L13')=10;
pMax('L14')=10;

pMax('L31')=10;
pMax('L32')=10;
pMax('L33')=10;
pMax('L34')=10;

pMax('L51')=10;
pMax('L52')=10;
pMax('L53')=10;
pMax('L54')=10;




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
pMin('k3')=1;


% pMax('k11')=100;
% pMax('k2')=10^10;
% pMax('k4')=10^10;
% pMax('k6')=10^10;
% pMax('k8')=10^10;
% pMax('k10')=10^10;
% pMax('k12')=10^10;
% pMax('k14')=10^10;
% pMax('k16')=10^10;
% pMax('k18')=10^10;
% pMax('k20')=10^10;
% pMax('k22')=10^10;
% pMax('k24')=10^10;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = dataVarError(pulse0IVM,P2X4free);
[err2] = dataVarError(pulse1IVM,P2X4free);
[err3] = dataVarError(pulse3IVM,P2X4free);
[err4] = dataVarError(pulse10IVM,P2X4free);
[err5] = dataVarError(prol3IVMsmall,P2X4free);
[err6] = dataVarError(prol2noIVM,P2X4free);

err7 = normPrestimDoseError(P2X4free);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4free);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err6,@(x) err7(x)/10}},'bounds',bounds);

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
 
[x0,xp0]=twalkStringParse('H1= [6.40819e-03, 7.55706e-03], H2= [1.39558e-01, 2.78468e-01], H3= [2.81355e-02, 1.67213e-02], H4= [2.95041e-05, 3.29907e-05], L11= [1.65786e-08, 3.21667e-08], L12= [2.00631e-01, 2.63271e-01], L13= [5.32943e-03, 1.37347e-03], L14= [9.41888e+00, 4.39306e-02], L21= [1.22191e-02, 7.66049e-03], L22= [1.03879e-02, 1.13639e-02], L23= [3.65586e-02, 8.80142e-02], L24= [1.78881e-01, 1.62548e-01], L31= [4.30091e+00, 8.29227e+00], L32= [5.16890e-01, 2.50361e+00], L33= [7.74727e-03, 1.38521e-01], L34= [5.17463e+00, 2.33210e+00], L41= [1.37001e-06, 1.25855e-06], L42= [9.72376e-02, 8.41568e-03], L43= [1.28144e+00, 4.50392e-01], L44= [1.84626e-02, 2.86735e-02], g1= [3.41838e-08, 2.18112e-08], g2= [1.42474e-07, 9.87114e-08], k1= [1.04615e+01, 1.03128e+01], k10= [6.79690e+07, 1.14035e+08], k11= [1.30706e+02, 5.81721e+00], k12= [7.57598e+05, 6.58113e+06], k13= [5.87848e+00, 3.78225e+01], k14= [3.82334e+06, 2.93058e+06], k15= [5.86203e-01, 5.03859e-01], k16= [6.43268e+06, 1.54488e+08], k17= [5.10300e+02, 5.28870e+02], k18= [1.01323e+03, 1.34439e+03], k19= [5.08606e-05, 1.13493e-04], k2= [2.06658e+06, 3.58889e+06], k20= [5.35873e+07, 1.21109e+08], k21= [2.66721e-03, 3.03798e-04], k22= [3.75372e+06, 4.25961e+06], k23= [4.70992e+01, 7.56350e+01], k24= [3.71622e+05, 8.34076e+04], k3= [4.68849e+00, 5.10270e+00], k4= [4.55847e+06, 4.18867e+06], k5= [3.65382e+01, 4.75503e+01], k6= [7.73312e+07, 1.82788e+08], k7= [1.57563e-03, 2.80645e-03], k8= [3.62169e+06, 4.19205e+06], k9= [3.00372e+00, 4.29559e-01]');


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
    

cf(2);chainDistributions(unravelChain(xxp));
    
    
continueChain(xp0);

cf(4);plotNaiveResponse(pulse0IVM,P2X4free);
% 
% cf(51);plotNaiveResponse(pulse1IVM,P2X4free);
% 
% cf(6);plotNaiveResponse(pulse3IVM,P2X4free);
% 
% cf(7);plotNaiveResponse(pulse10IVM,P2X4free);
% 
% cf(8);plotNaiveResponse(prol3IVMsmall,P2X4free);

cf(9);plotNaiveResponse(prol2noIVM,P2X4free);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4free);

cf(10);prestimDoseResponses(P2X4free);
    
continueChain(x0);
 
% 
cf(14);plotNaiveResponse(pulse0IVM,P2X4free);
% 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4free);
% 
% cf(16);plotNaiveResponse(pulse3IVM,P2X4free);
% 
% cf(17);plotNaiveResponse(pulse10IVM,P2X4free);
% 
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4free);

cf(20);prestimDoseResponses(P2X4free);



 

save(['twalk_P2X4free_var_noIVM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


