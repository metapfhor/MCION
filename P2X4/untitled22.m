load('twalk_P2X4free_preStim_and_3_and_1uM1000_steps@20141202T145352.mat')
% 
baseParameters('L24')=0.05;
baseParameters('L23')=0.05;
% baseParameters('k8')=10^8;
% baseParameters('k12')=10^8;
baseParameters('L13')=2.5;
baseParameters('L12')=2.5;
baseParameters('L14')=3.5;

baseParameters('L33')=0.1;
baseParameters('L34')=0.8;

baseParameters('L53')=0.1;
baseParameters('L54')=0.8;


cf(44);

%  subplot(2,1,1);
 plotPulseShort(pulse1IVM,P2X4free)
%  annotatePlot('A',28);
%  title('1 uM IVM')
 
%  subplot(2,1,2);
cf(45);
 plotPulseShort(pulse3IVM,P2X4free) 
%  annotatePlot('B',28);
%  title('3 uM IVM')
cf(46);

 plotPulseShort(pulse10IVM,P2X4free) 