ff=0.001;
fb=0.00001;
global pulse3IVM
global g1 g2 H2 L51 L52 L53 L54 L61 L62 L63 L64  L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 k7 k9 k11 k13 k17 k19 k15 k21 k23 L11 L12 L13 L14 k2 k4 k6 k1 k3 k5 k8 k10 k12 k14 k16 k18 k20 k22 k24 E1 E2 alpha1 alpha2 alpha3 beta1 beta2 beta3 H11 H12 H13 H14 ks1 ks2 ks3 ks4 kd1 kd2 kd3 kd4
global mu epsilon delta IVMon IVMoff J
global alpha BC50 B A d1 d3 d5
% 

load('good_EC50_okay_kinetics_and_amplitudes_2.mat');

P2X4StackDeMix5.setParams([]);
IVMon=0;
IVMoff=0;
J=0;
A=50e-6;
alpha=5;
B=0;
BC50=0.5e-6;
 kd1=kd1*2;
ks1=ks1*10^7.5;
d1=k1*10;
d3=k3*10;
d5=k5*10;
[T1,I1,Y1]=P2X4BX430.naivePerfusionResponse(0,15,30);

Yf=Y1(end,:);

A=50e-6;

[T2,I2,Y2]=P2X4BX430.perfusionResponse(Yf,0,5,5);

Yf=Y2(end,:);
B=5e-6;

[T3,I3,Y3]=P2X4BX430.perfusionResponse(Yf,0,10,10);

Yf=Y3(end,:);


B=0;
[T4,I4,Y4]=P2X4BX430.perfusionResponse(Yf,15,15,15);

Yf=Y4(end,:);
A=50e-6;
[T5,I5,Y5]=P2X4BX430.perfusionResponse(Yf,0,15,30);

% cf(3);
% 
% subplot(2,1,1);
% plot([T1;T2+30;T3+35;T4+45;T5+60],[I1;I2;I3;I4;I5]);
% 
% subplot(2,1,2);
% plotWatchedStates([T1;T2+30;T3+35;T4+45;T5+60],[Y1;Y2;Y3;Y4;Y5],P2X4BX430);
% 
cf(33);

plot(T1,I1,[T2;T3+5;T4+15],[I2;I3;I4],T5,I5);
legend('1','2','3');
labelPlot('Time (s)','Current (pA)',18)
