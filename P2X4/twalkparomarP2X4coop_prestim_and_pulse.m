global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3','r3','r2','v3','v2','a1'};

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

fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;

% fparam('v1')=1;
% fparam('v2')=1;
% fparam('v3')=1;
% 
% fparam('r1')=1;
% fparam('r2')=1;
% fparam('r3')=1;



% 
fparam('L10')=1;
fparam('L20')=1;
fparam('L30')=1;
fparam('L40')=1;
fparam('L50')=1;
fparam('L60')=1;

fparam('L11')=1;
fparam('L21')=1;
fparam('L31')=1;
fparam('L41')=1;
fparam('L51')=1;
fparam('L61')=1;

fparam('L12')=1;
fparam('L22')=1;
fparam('L32')=1;
fparam('L42')=1;
fparam('L52')=1;
fparam('L62')=1;

fparam('L13')=1;
fparam('L23')=1;
fparam('L33')=1;
fparam('L43')=1;
fparam('L53')=1;
fparam('L63')=1;


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
% fparam('a1')=1;
% fparam('a2')=1;
% fparam('a3')=1;

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

pMax('L31')=1000;
pMax('L51')=1000;
pMax('L63')=10000;

pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,omarP2X4coop);
[err2] = normDataErrorOmar(pulse1IVM,omarP2X4coop);
[err3] = normDataErrorOmar(pulse3IVM,omarP2X4coop);
[err4] = normDataErrorOmar(pulse10IVM,omarP2X4coop);
[err5] = normDataErrorOmar(prol3IVM,omarP2X4coop);
[err6] = normDataErrorOmar(prol2noIVM,omarP2X4coop);

err7 = normPrestimDoseError(omarP2X4coop);


etot = @(x) err1(x)+err2(x)+err3(x)+err4(x)+err5(x)+err6(x)+err7(x);

enoivm = @(x) 100*err1(x)+err6(x);
emed =@(x) err2(x)+err5(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);

[x0,bounds] = buildInitialParams();
    

dilation = modelDilation(omarP2X4coop);

glblStruct=struct('baseParameters',baseParameters,'iparam',iparam,'fparam',fparam);

p = struct('globalStruct',glblStruct,'logPrior', @(x) dilation(x), 'logLikelihood',{{err1,err2,err3,err4,err5,err6,@(x) 1000*err7(x)}},'bounds',bounds);

if p(1).logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%    xp0 = x0.*(1+0.4*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p(1).logPrior(xp0)==0
    xp0 = x0.*(1+0.4*randn(size(x0)));
end
% 
[x0,xp0]=twalkStringParse(' H1= [5.71422e-03, 2.00576e-02], H2= [2.79913e-01, 3.35951e-01], H3= [1.78294e-01, 8.30651e-02], H4= [1.03676e-03, 1.17075e-03], L10= [1.12320e+00, 2.13130e+00], L11= [7.46785e-01, 7.67213e-01], L12= [3.10950e-01, 2.80159e+00], L13= [7.66521e+01, 5.98790e+00], L20= [7.45422e-01, 6.25061e-01], L21= [4.30022e+00, 1.23307e+00], L22= [1.31007e+02, 9.41770e+01], L23= [4.17161e+02, 1.43414e+02], L30= [4.70197e-05, 9.85667e-04], L31= [2.27197e+00, 7.23284e-03], L32= [1.25564e-02, 1.51371e-02], L33= [2.32985e-03, 3.08827e-03], L40= [5.00336e-02, 7.72770e-02], L41= [4.31971e-03, 1.27494e-02], L42= [5.01314e-03, 5.35697e-04], L43= [2.82413e-02, 2.17986e-02], L50= [4.08417e-03, 3.63467e-03], L51= [3.20233e+02, 5.52064e+02], L52= [1.43615e-01, 2.91563e-01], L53= [6.32192e-01, 2.36223e-01], L60= [5.79520e-01, 6.17891e-01], L61= [7.39759e+00, 1.57286e+01], L62= [1.92429e+00, 3.18259e+00], L63= [8.75459e+02, 1.11554e+03], g1= [4.37332e-08, 3.19689e-08], g2= [8.00641e-08, 5.06691e-08], k1= [1.94881e+00, 2.00517e+00], k10= [4.25611e+08, 3.45315e+08], k11= [2.40387e+02, 1.68774e+03], k12= [1.25860e+09, 2.64121e+08], k13= [4.69670e-02, 6.60849e-02], k14= [4.11776e+05, 7.03804e+05], k15= [9.25048e-02, 2.76683e-01], k16= [6.62231e+09, 6.64223e+09], k17= [1.88209e+06, 2.01500e+06], k18= [3.10050e+08, 8.32327e+07], k19= [8.20891e-02, 3.84043e-01], k2= [3.43986e+05, 3.19543e+05], k20= [1.88983e+05, 1.90144e+05], k21= [3.70334e-02, 5.14256e-02], k22= [3.56035e+06, 3.51676e+06], k23= [4.79477e-02, 5.88107e-02], k24= [5.11846e+06, 4.27243e+06], k3= [2.86159e+00, 4.84579e+00], k4= [4.95206e+08, 4.46689e+10], k5= [3.68633e+02, 1.83158e+02], k6= [1.74881e+08, 1.99479e+08], k7= [1.50298e+02, 7.18662e+01], k8= [7.18704e+05, 1.03410e+06], k9= [2.09528e+00, 1.25862e+00]');

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

% cf(4);plotNaiveResponse(pulse0IVM,omarP2X4coop);

% cf(5);plotNaiveResponse(pulse1IVM,omarP2X4coop);

% cf(6);plotNaiveResponse(pulse3IVM,omarP2X4coop);

% cf(7);plotNaiveResponse(pulse10IVM,omarP2X4coop);

% cf(8);plotNaiveResponse(prol3IVM,omarP2X4coop);

% cf(9);plotNaiveResponse(prol2noIVM,omarP2X4coop);

 cf(10);chainPrestimDoseResponse(xp0,omarP2X4coop);


    
continueChain(x0);
 
% 
% cf(14);plotNaiveResponse(pulse0IVM,omarP2X4coop);
% 
% cf(15);plotNaiveResponse(pulse1IVM,omarP2X4coop);
% 
% cf(16);plotNaiveResponse(pulse3IVM,omarP2X4coop);
% 
% cf(17);plotNaiveResponse(pulse10IVM,omarP2X4coop);
% 
% cf(18);plotNaiveResponse(prol3IVM,omarP2X4coop);
% 
% cf(19);plotNaiveResponse(prol2noIVM,omarP2X4coop);

 cf(20);chainPrestimDoseResponse(x0,omarP2X4coop);




 

save(['twalk_omarP2X4coop_preStim' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


