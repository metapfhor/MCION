global baseParameters fparam parami nbin Acell calP2X7 iparam parami baseModel pMax pMin;

pMax=containers.Map();
pMin=containers.Map();


%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','alpha'};

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

fparam('L1')=1;
fparam('L2')=1;
fparam('L3')=1;
fparam('L4')=1;

fparam('L5')=1;
fparam('L6')=1;

fparam('H1')=1;
fparam('H2')=1;
fparam('H3')=1;
fparam('H4')=1;

fparam('V')=0;
fparam('alpha')=0;

vals=fparam.values;
Npar=sum([vals{:}]);

pMax('L1')=0.5;



[err1] = normDataErrorOmar(pulse0IVM,P2X4,0.03);
[err2] = normDataErrorOmar(pulse1IVM,P2X4,0.04);
[err3] = normDataErrorOmar(pulse3IVM,P2X4,0.05);
[err4] = normDataErrorOmar(pulse10IVM,P2X4,0.05);
[err5] = normDataErrorOmar(prol3IVM,P2X4,0.05);
[err6] = normDataErrorOmar(prol2noIVM,P2X4,0.05);

etot = @(x) err5(x)+err3(x)+err4(x)+err2(x)+err1(x)+err6(x);


[x0,bounds] = buildInitialParams();

p = struct('logPrior', @(x) 1, 'logLikelihood',@(x) -etot(x),'bounds',bounds);

if p.logPrior(x0)==0
    disp('x0 is not in the support of the sampler!!!!')
end
%   xp0 = x0.*(1+0.02*randn(size(x0)));
if exist('x0','var')==0
    x0 = buildInitialParams();
    xp0 = x0.*(1+randn(size(x0)));
end
while p.logPrior(xp0)==0
    xp0 = x0.*(1+0.002*randn(size(x0)));
end

%  [x0,xp0]=twalkStringParse('H1= [5.46364e-03, 7.67753e-03], H2= [2.42828e-01, 2.65586e-01], H3= [6.89541e-01, 4.19901e-01], H4= [2.03655e-03, 1.41237e-03], L1= [1.86092e-01, 3.41730e-01], L2= [4.18310e-01, 8.08447e-01], L3= [7.49709e-03, 7.81914e-03], L4= [1.16995e-01, 1.46563e-01], L5= [3.76471e-02, 3.34263e-02], L6= [6.57895e-02, 1.23038e-01], g1= [3.47505e-08, 4.67017e-08], g2= [5.93829e-08, 5.42317e-08], k1= [5.88366e+00, 1.92262e+00], k10= [2.68294e+06, 4.03124e+06], k11= [6.88314e-07, 1.24789e-06], k12= [4.22957e+03, 2.04573e+03], k13= [4.75228e-04, 3.08946e-04], k14= [7.55662e+05, 7.27352e+05], k15= [2.72938e-01, 2.80400e-01], k16= [5.22818e+05, 6.18932e+05], k17= [3.47037e+00, 3.49291e+00], k18= [1.98218e+03, 1.46154e+05], k19= [7.69079e-02, 2.56986e-02], k2= [4.65550e+05, 4.87654e+05], k20= [3.74289e+05, 1.20193e+05], k21= [3.85985e-02, 5.46036e-02], k22= [1.39878e+06, 1.70747e+06], k23= [1.28234e-01, 1.79464e-01], k24= [6.04740e+06, 7.14569e+06], k3= [1.84461e+00, 2.93847e+00], k4= [2.44490e+07, 8.03691e+06], k5= [1.18099e+01, 8.11661e+00], k6= [6.32240e+05, 9.84007e+05], k7= [8.57219e-01, 2.11742e+00], k8= [1.41143e+06, 1.40969e+06], k9= [1.28928e+00, 9.30483e-01]');

Niter=10000;
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
cf(4);plotNaiveResponse(pulse0IVM,P2X4);

cf(5);plotNaiveResponse(pulse1IVM,P2X4);

cf(6);plotNaiveResponse(pulse3IVM,P2X4);

cf(7);plotNaiveResponse(pulse10IVM,P2X4);

cf(8);plotNaiveResponse(prol3IVM,P2X4);

cf(9);plotNaiveResponse(prol2noIVM,P2X4);


    
continueChain(x0);
 
cf(14);plotNaiveResponse(pulse0IVM,P2X4);

cf(15);plotNaiveResponse(pulse1IVM,P2X4);

cf(16);plotNaiveResponse(pulse3IVM,P2X4);

cf(17);plotNaiveResponse(pulse10IVM,P2X4);

cf(18);plotNaiveResponse(prol3IVM,P2X4);

cf(19);plotNaiveResponse(prol2noIVM,P2X4);



 

save(['twalk_P2X4_' num2str(Niter) '_steps@' datestr(now,30) '.mat' ],'x0','xp0','xxp','lt','acc','fparam','baseParameters','parami','iparam','parami')


