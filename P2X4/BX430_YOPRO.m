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
IVMoff=330;
J=3E-6;
A=50e-6;
alpha=30;
B=0;
BC50=0.5e-6;
kd1=kd1*2;
ks1=ks1*10^7.5;
ks2=ks2*5;
ks3=ks3*5;
ks4=ks4*2;
d1=k1*10;
d3=k3*10;
d5=k5*10;
[T1,I1,Y1]=P2X4BX430.naivePerfusionResponse(30,330,330);

A=50e-6;
B=5e-6;
[T2,I2,Y2]=P2X4BX430.naivePerfusionResponse(30,330,330);


cf(4);


plot(T1(T1>30)-30,Y1(T1>30,34)/Y1(end,34),T2(T2>30)-30,Y2(T2>30,34)/Y1(end,34));
labelPlot('Time (s)','Normalized Fluorescence',18);
legend('IVM','IVM+BX430')
% 
% subplot(2,1,2);
% plotWatchedStates([T1;T2+10;T3+12.5;T4+15;T5+20],[Y1;Y2;Y3;Y4;Y5],P2X4BX430);