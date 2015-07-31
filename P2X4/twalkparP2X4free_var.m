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


p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err2,err3,err4}},'bounds',bounds);

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
 
% [x0,xp0]=twalkStringParse('H1= [6.62304e-03, 7.37138e-03], H2= [1.88810e-01, 4.24437e-02], H3= [2.75179e-02, 3.12906e-02], H4= [2.97449e-05, 2.37780e-05], L11= [2.18595e-08, 2.01132e-08], L12= [2.03330e-01, 2.26812e-01], L13= [5.30136e-04, 1.45347e-03], L14= [2.89942e+00, 9.98892e+00], L21= [6.31533e-03, 8.22890e-03], L22= [1.74886e-03, 4.90123e-04], L23= [6.81009e-03, 3.55065e-03], L24= [1.95755e-01, 1.38928e-01], L31= [3.67152e-05, 3.62222e-05], L32= [5.97123e+00, 1.98218e+00], L33= [5.97099e-03, 4.59897e-03], L34= [9.17474e-02, 9.97320e+00], L41= [3.41056e-07, 1.11442e-07], L42= [6.54493e-02, -2.35116e-02], L43= [2.65287e-01, 3.32111e-01], L44= [5.90530e-02, 6.76559e-02], g1= [3.09401e-08, 2.93817e-08], g2= [1.55058e-07, 1.27239e-07], k1= [9.79546e+00, 1.05223e+01], k10= [1.90437e+07, 1.67303e+07], k11= [9.65845e+01, 9.02037e+01], k12= [5.55627e+06, 6.64202e+06], k13= [3.75378e+01, 4.73647e+01], k14= [3.28320e+06, 2.94073e+06], k15= [2.46341e-01, 8.48307e-02], k16= [3.36591e+07, 2.02932e+07], k17= [3.66699e+02, 5.34964e+02], k18= [2.33545e+03, 2.93913e+03], k19= [1.17006e-04, 8.89505e-05], k2= [2.27956e+06, 1.80811e+06], k20= [2.13671e+06, 3.21425e+06], k21= [1.48219e-03, 2.28374e-03], k22= [3.11651e+06, 4.69563e+06], k23= [1.39320e+02, 1.62876e+02], k24= [1.23998e+05, 7.34093e+04], k3= [3.45046e+00, 5.82680e+00], k4= [2.62399e+06, 3.64564e+06], k5= [4.32266e+01, 4.28969e+01], k6= [5.63037e+07, 5.25971e+07], k7= [1.13499e-03, 1.14271e-03], k8= [2.37866e+06, 2.47905e+06], k9= [1.67269e+01, 2.49677e+01]');


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
cf(51);plotNaiveResponse(pulse1IVM,P2X4free);
% % 
cf(6);plotNaiveResponse(pulse3IVM,P2X4free);
% 
cf(7);plotNaiveResponse(pulse10IVM,P2X4free);
% 
% cf(8);plotNaiveResponse(prol3IVMsmall,P2X4free);

% cf(9);plotNaiveResponse(prol2noIVM,P2X4free);

%  cf(10);chainPrestimDoseResponse(xp0,P2X4free);

%  cf(10);prestimDoseResponses(P2X4free);
    
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
% cf(18);plotNaiveResponse(prol3IVMsmall,P2X4free);
% 
% cf(19);plotNaiveResponse(prol2noIVM,P2X4free);

%   cf(20);prestimDoseResponses(P2X4free);



 

save(['twalk_P2X4free_preStim_and_3_and_1uM' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


