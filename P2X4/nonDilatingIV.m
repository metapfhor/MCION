ff=0.001
fb=0.00001;

load('twalk_P2X4free_preStim_and_3_and_1uM1000_steps@20141202T145352.mat')

baseParameters('E2')=-9e-3;
baseParameters('E1')=-80e-3;


baseParameters('L21')=ff*baseParameters('L21');
baseParameters('L22')=ff*baseParameters('L22');
baseParameters('L23')=ff*baseParameters('L23');
baseParameters('L24')=1*baseParameters('L24');

baseParameters('L14')=fb*baseParameters('L14');
baseParameters('L13')=fb*baseParameters('L13');
baseParameters('L12')=fb*baseParameters('L12');
baseParameters('L11')=fb*baseParameters('L11');

IV(P2X4free)