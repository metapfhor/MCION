%Make global variables.
global baseParameters fparam parami nbin Acell iparam;

%Set the number of bins to 1000.
nbin=1000;

%Create a cell array of strings with the names of the parameters.
paramNames={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','V','alpha'};

%Create a map in which the value of one is assigned to each parameter.
fparam=oneMap(paramNames{:});

%Manually modify the values assigned to each parameter in the map
% fparam('g1')=0;
% fparam('g2')=0;
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

fparam('L5')=0;
fparam('L6')=0;

% fparam('H1')=0;
% fparam('H2')=0;
% fparam('H3')=0;
% fparam('H4')=0;

% fparam('epsilon')=0;
% fparam('delta')=0;
% fparam('mu')=0;
% 
% fparam('n1')=0;
% fparam('n2')=0;
% fparam('n3')=0;


fparam('V')=0;
fparam('A')=0;
fparam('J')=0;


%probably need all other params to converge first

restart=true; %Assign the value 1 to the restart variable.

%The error and the number of experiments (Ncell) are returned by the
%execution of the statement below.

% Parameters in a struct, argument is # of temperature levels
Acell=1;
% [err1] = normDataErrorOmar(pulse0IVM,P2X4,0.03);
% % [err6] = normDataErrorOmar(prol2noIVM,P2X4,0.05);
% [err2] = normDataErrorOmar(pulse1IVM,omarP2X4,0.04);
% [err3] = normDataErrorOmar(pulse3IVM,omarP2X4,0.05);
% [err4] = normDataErrorOmar(pulse10IVM,omarP2X4,0.05);
% [err5] = normDataErrorOmar(prol3IVM,omarP2X4,0.05);

L=2;

Ncell=1; %Added this for new data error function.

vals=fparam.values;
Npar=sum([vals{:}]);
if exist('R','var') & size(R)==[Npar,Npar,L] %may produce some param mismatch at first but always better than identity
    param = buildParameterSetOmar(L,goodSamples,R);
else
    if exist('goodSamples','var')
         param = buildParameterSetOmar(L,goodSamples);
    else
      param = buildParameterSetOmar(L,[]);
    end
end

% Number of iterations
N=1e2;
% Run the PT
[X, m, R, theta, beta, stats, sse, XA] = cell_adaptive_pt(@(x) -(err5(x)/10+1.0*err3(x)+3.0*err2(x)+err4(x)+err1(x)), param, N,Ncell);
% [X, m, R, theta, beta, stats, sse, XA] = cell_adaptive_pt(@(x,l) -err2(x,l), param, N,Ncell);

% cf(1);chainConvergence(X,beta,sse);


% cf(9);plotDensity(sse(sse<2*10^9));

goodSamples=cullChain(X,sse,2*10^8); %if it runs into a problem here, just reevaluate this part.

% cf(2);chainDistributions(X); %if it runs into errors here (attempt to reference fields
%of nonstructural array, then just re-run MCMC, clear and reload.

continueChain(X);
%updateParams(varNames,varsFinal(:,1),paramNames,params);

cf(2);plotNaiveResponse(pulse0IVM,omarP2X4);

cf(3);plotNaiveResponse(pulse1IVM,omarP2X4);

cf(4);plotNaiveResponse(pulse3IVM,omarP2X4);

cf(5);plotNaiveResponse(pulse10IVM,omarP2X4);

cf(6);plotNaiveResponse(prol3IVM,omarP2X4);

cf(7);plotNaiveResponse(prol2noIVM,omarP2X4);


% 
% 
% cf(7);plotChainResponse(prol3IVM,P2X4,goodSamples(:,1,:),10)
% 
% cf(6);plotChainResponse(prol2noIVM,P2X4,goodSamples(:,1,:),20)

% cf(7);plot(1:N,squeeze(XA));
 
 
save(['Allbut10_' num2str(N) '_steps@' num2str(L) '_levels_' datestr(now,30) '.mat' ],'X','beta','sse','R','fparam','baseParameters','parami','XA')

