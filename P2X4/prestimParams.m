global baseParameters iparam

% baseParameters('L1')=1;
% baseParameters('L2')=10;
% baseParameters('L3')=1e-4;
% baseParameters('L4')=0.03;
% baseParameters('L5')=0.02;
% baseParameters('L6')=10;
% 
% baseParameters('r1')=3;
% baseParameters('v1')=5;
% baseParameters('r2')=2;
% baseParameters('v2')=0.02;
% baseParameters('r3')=1;
% baseParameters('v3')=1;

 
% baseParameters('L2')=100;
% baseParameters('L3')=0.0001;
% baseParameters('L4')=0.03;
% baseParameters('L1')=0.1;
% baseParameters('L5')=0.2;
% baseParameters('L6')=20;
% baseParameters('r1')=3;
% baseParameters('r2')=2;
% baseParameters('r3')=1.1;
% baseParameters('v1')=5.7;
% baseParameters('v2')=0.019;
% baseParameters('v3')=4;

% cf(20);prestimDoseResponses(potentP2X4coop2);
% return;

X=unravelChain(xxp);
f=chainUnifSampler(X);

nx=100;

Xsample=zeros(size(X,1),nx);

for i=1:nx
    Xsample(:,i)=f();
end



% keys={'L1','L2','L3','L4','L5','L6','r1','r2','r3','v1','v2','v3'};

% ints=struct();
% 
% ints.L1=[0.009,0.016];
% ints.L2=[0.008,0.09];
% ints.L3=[0.0087,0.0097];
% ints.L4=[0.014,0.018];
% ints.L5=[0.36,0.46];
% ints.L6=[1.5,1.9];
% 
% ints.r1=[0.8,1];
% ints.v1=[0.23,0.27];
% ints.r2=[3.5,4.5];
% ints.v2=[0.043,0.046];
% ints.r3=[0.45,0.65];
% ints.v3=[0.0001,0.0012];
% 
% keys=fieldnames(ints);
% 
% for i=1:length(keys)
%     k=keys{i};
%     interval=ints.(k);
%     Xsample(iparam(k),:)=interval(1)+(interval(2)-interval(1))*rand(1,nx);
% end

cf(31);parChainPrestimDoseResponse(Xsample,potentP2X4coop2);


