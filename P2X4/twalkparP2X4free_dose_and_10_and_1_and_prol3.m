global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','kd0','kd1','kd2','kd3','ku0','ku1','ku2','ku3','L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','r1','v3','v2','v1','a1','a2','a3','alpha','rho1','rho2','rho3','A','J','V'};
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

fparam('L51')=1;
fparam('L52')=1;
fparam('L53')=1;
fparam('L54')=1;

fparam('L61')=1;
fparam('L62')=1;
fparam('L63')=1;
fparam('L64')=1;

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

[err1] = normDataErrorOmar(pulse0IVM,P2X4free);
[err2] = normDataErrorOmar(pulse1IVM,P2X4free);
[err3] = normDataErrorOmar(pulse3IVM,P2X4free);
[err4] = normDataErrorOmar(pulse10IVM,P2X4free);
[err5] = normDataErrorOmar(prol3IVMsmall,P2X4free);
[err6] = normDataErrorOmar(prol2noIVM,P2X4free);

err7 = normPrestimDoseError(P2X4free);

err8 = normIVMRecoveryError(P2X4free);

etot = @(x) 10*err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    



dilation = indepCoopDilation(P2X4free);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{@(x) 1000*err1(x),err2,err3,err4,err5,err6,@(x) 100*err7(x) ,@(x) 1000*err8(x)}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('L11= [5.72226e-03, 5.90979e-03], L12= [9.04984e-01, 1.17153e+00], L13= [7.08010e-03, 6.63355e-03], L14= [5.53147e-01, 2.10428e+00], L21= [2.02387e-02, 9.98753e-03], L22= [1.05188e-02, 1.00835e-02], L23= [3.19992e-01, 1.37576e-01], L24= [8.77728e-01, 9.04137e-01], L31= [9.84558e-03, 9.86796e-03], L32= [2.39208e-01, 6.41958e+00], L33= [6.05407e-03, 1.20672e-02], L34= [5.16723e+00, 6.01007e+00], L41= [2.08922e-04, 2.13448e-04], L42= [8.19638e-01, 3.44879e-01], L43= [2.10082e-01, 9.32276e-01], L44= [2.02446e-01, 3.04154e-01], L51= [4.70464e+00, 7.40096e+00], L52= [4.16690e+00, 4.98950e+00], L53= [1.17059e-01, 3.71792e-01], L54= [6.84861e-01, 9.61415e-01], L61= [2.15336e-01, 1.56718e-01], L62= [4.92105e-02, 6.18548e-02], L63= [4.22211e-01, 3.99774e-01], L64= [2.44907e-01, 9.63997e-02], g2= [8.86236e-08, 1.36855e-07], k10= [3.37719e+07, 4.09705e+07], k11= [2.09202e+01, 2.28920e+01], k12= [2.63030e+06, 7.07128e+06], k13= [1.59719e+02, 1.64417e+02], k14= [4.67912e+07, 1.65915e+07], k15= [1.89548e-01, 1.53245e-01], k16= [7.37978e+06, 4.36708e+07], k17= [2.11130e+00, 6.16671e+00], k18= [1.60369e+01, 1.39269e+01], k19= [1.68585e-03, 7.89430e-04], k20= [9.32655e+06, 9.54127e+06], k21= [1.16467e-02, 1.25910e-02], k22= [5.20216e+04, 1.15925e+05], k23= [4.33689e+02, 4.72023e+02], k24= [2.49191e+04, 2.49366e+04], k7= [1.23728e-01, 4.71148e-02], k8= [7.71494e+07, 1.11232e+08], k9= [2.41183e+00, 2.66167e+00]');


Niter=100;
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
cf(51);plotNaiveResponse(pulse1IVM,P2X4free);
% % 
cf(6);plotNaiveResponse(pulse3IVM,P2X4free);
% 
cf(7);plotNaiveResponse(pulse10IVM,P2X4free);
% 
cf(8);plotNaiveResponse(prol3IVMsmall,P2X4free);

cf(9);plotNaiveResponse(prol2noIVM,P2X4free);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4free);

 cf(10);prestimDoseResponses(P2X4free);
 
 cf(11);plotIVMAction(P2X4free);
    
continueChain(x0);
 
% 
cf(14);plotNaiveResponse(pulse0IVM,P2X4free);
% 
cf(15);plotNaiveResponse(pulse1IVM,P2X4free);
% % 
cf(16);plotNaiveResponse(pulse3IVM,P2X4free);
% % 
cf(17);plotNaiveResponse(pulse10IVM,P2X4free);
% % 
cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free);
% 
cf(19);plotNaiveResponse(prol2noIVM,P2X4free);

  cf(20);prestimDoseResponses(P2X4free);


cf(21);plotIVMAction(P2X4free);
 

save(['twalk_P2X4free_preStim_and_3_and_1uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


