global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','epsilon','delta','mu','A','J','n1','n2','n3'};

%Create a map in which the value of one is assigned to each parameter.
fparam=zeroMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=1;
% fparam('g2')=1;
% fparam('E1')=0;
% fparam('E2')=0;
% 
% fparam('k1')=1;
% fparam('k2')=1;
% fparam('k3')=1;
% fparam('k4')=1;
% fparam('k5')=1;
% fparam('k6')=1;
% 
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

fparam('k19')=1;
fparam('k20')=1;
fparam('k21')=1;
fparam('k22')=1;
fparam('k23')=1;
fparam('k24')=1;
% 
% fparam('L1')=1;
% fparam('L2')=1;
% fparam('L3')=1;
% fparam('L4')=1;
% 
fparam('L5')=1;
fparam('L6')=1;
% 
% fparam('H1')=1;
% fparam('H2')=1;
% fparam('H3')=1;
% fparam('H4')=1;
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
pMax('epsilon')=1e-5;
pMax('delta')=1e-5;
pMax('n1')=5;
pMin('n1')=0.5;
pMax('n2')=5;
pMin('n2')=0.5;
pMax('n3')=5;
pMin('n3')=0.5;

[err1] = normDataErrorOmar(pulse0IVM,omarP2X4,0.03);
[err2] = normDataErrorOmar(pulse1IVM,omarP2X4,0.04);
[err3] = normDataErrorOmar(pulse3IVM,omarP2X4,0.05);
[err4] = normDataErrorOmar(pulse10IVM,omarP2X4,0.05);
[err5] = normDataErrorOmar(prol3IVM,omarP2X4,0.05);
[err6] = normDataErrorOmar(prol2noIVM,omarP2X4,0.05);

etot = @(x) err5(x)+err3(x)+err4(x)+err2(x)+err1(x)+err6(x);

epulse = @(x) err3(x)+err4(x)+err2(x)+10*err1(x);
eprol = @(x) 3*err5(x)+err6(x);


[x0,bounds] = buildInitialParams();

p = struct('logPrior', @(x) 1, 'logLikelihood',@(x) -(err4(x)),'bounds',bounds);

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
%  [x0,xp0]=twalkStringParse(' H1= [6.00596e-03, 6.38191e-03], H2= [4.27521e-01, 4.64780e-01], H3= [4.44494e+00, 3.06159e+00], H4= [4.80413e-04, 8.29352e-04], L1= [1.77518e-01, 9.81857e-02], L2= [3.64617e-01, 3.94477e-01], L3= [1.96114e-02, 1.61022e-02], L4= [9.31923e-02, 6.48618e-02], L5= [1.57446e-02, 1.71552e-02], L6= [5.83374e-01, 7.79908e-01], delta= [2.16935e-06, 1.26091e-06], epsilon= [3.29682e-06, 3.14837e-06], g1= [9.26962e-08, 7.56541e-08], g2= [1.10171e-07, 9.20099e-08], k1= [2.64696e+00, 1.16205e+00], k10= [5.81321e+04, 9.47122e+04], k11= [8.09360e+04, 7.18592e+04], k12= [1.13118e+03, 4.07921e+03], k13= [1.84534e+06, 7.07162e+05], k14= [6.81139e+06, 5.98510e+06], k15= [7.37089e+01, 3.54717e+01], k16= [1.31357e+05, 5.73183e+04], k17= [1.67659e+07, 2.77108e+07], k18= [2.15398e+04, 1.59852e+04], k19= [1.47775e-02, 1.18049e-02], k2= [6.26282e+04, 5.17665e+04], k20= [9.47401e+05, 2.86104e+05], k21= [3.43296e-01, 3.44332e-01], k22= [4.96677e+08, 5.48451e+08], k23= [1.67436e+05, 1.28179e+05], k24= [4.89605e+07, 8.58480e+07], k3= [2.83764e+00, 2.29813e+00], k4= [1.12038e+08, 1.09514e+08], k5= [6.67965e+00, 3.91662e+00], k6= [1.27758e+07, 1.38067e+07], k7= [7.21142e-02, 1.37789e+00], k8= [1.47247e+05, 3.03468e+05], k9= [1.10158e-02, 1.62866e-02], mu= [5.67541e-06, 6.26357e-06], n1= [7.84455e-01, 6.67989e-01], n2= [3.46084e+00, 7.98528e-01], n3= [4.01680e+00, 4.09076e+00]');

Niter=500;
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



cf(7);plotNaiveResponse(pulse10IVM,omarP2X4);




    
continueChain(x0);


cf(17);plotNaiveResponse(pulse10IVM,omarP2X4);




 

save(['twalk_omarP2X4_lastRow' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


