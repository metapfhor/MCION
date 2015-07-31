global baseParameters


baseParameters('L11')=baseParameters('L1');
baseParameters('L12')=baseParameters('gamma1')*baseParameters('L1');
baseParameters('L13')=baseParameters('gamma2')*baseParameters('L1');
baseParameters('L14')=baseParameters('gamma3')*baseParameters('L1');


baseParameters('L21')=baseParameters('L2');
baseParameters('L22')=baseParameters('rho1')*baseParameters('L2');
baseParameters('L23')=baseParameters('rho2')*baseParameters('L2');
baseParameters('L24')=baseParameters('rho3')*baseParameters('L2');


baseParameters('L31')=baseParameters('L3');
baseParameters('L32')=baseParameters('gamma1')*baseParameters('L3');
baseParameters('L33')=baseParameters('gamma2')*baseParameters('L3');
baseParameters('L34')=baseParameters('gamma3')*baseParameters('L3');


baseParameters('L41')=baseParameters('L4');
baseParameters('L42')=baseParameters('rho1')*baseParameters('L4');
baseParameters('L43')=baseParameters('rho2')*baseParameters('L4');
baseParameters('L44')=baseParameters('rho3')*baseParameters('L4');

baseParameters('k7')=baseParameters('v2')*baseParameters('k1');
baseParameters('k8')=baseParameters('r2')*baseParameters('k2');
baseParameters('k9')=baseParameters('v2')*baseParameters('k3');
baseParameters('k10')=baseParameters('r2')*baseParameters('k4');
baseParameters('k11')=baseParameters('v2')*baseParameters('k5');
baseParameters('k12')=baseParameters('r2')*baseParameters('k6');


return


baseParameters('r3')=baseParameters('r3')/baseParameters('r2');
baseParameters('v3')=baseParameters('v3')/baseParameters('v2');
