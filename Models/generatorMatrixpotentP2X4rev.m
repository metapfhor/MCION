function generatorMatrixpotentP2X4rev()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 alpha a1 a2 a3 Q;
Q=[-k2*A-L2*J^4/(J^4+delta^4),k2*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;k1,-k1-k4*A-H2-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,H2,0,0,0;L1,0,-r1*k2*A-L1-L4*J^4/(J^4+epsilon^4),r1*k2*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,L1,v1*k1,-v1*k1-r1*k4*A-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,r1*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,L3,0,-r2*k2*A-L3-L6*J^4/(J^4+mu^4),r2*k2*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,L3,v2*k1,-v2*k1-r2*k4*A-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,r2*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,L5,0,-r3*k2*A-L5,r3*k2*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,L5,v3*k1,-v3*k1-r3*k4*A-L5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,r3*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0;ku0,0,0,0,0,0,0,0,-k8*A-ku0-L2*J^4/(J^4+delta^4),k8*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,ku0,0,0,0,0,0,0,k7,-k7-k10*A-ku0-alpha*H2-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,k10*A,0,0,0,0,0,0,0,0,alpha*H2,0,0,0;0,0,ku1,0,0,0,0,0,L1,0,-r1*k8*A-ku1-L1-L4*J^4/(J^4+epsilon^4),r1*k8*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,ku1,0,0,0,0,0,L1,v1*k7,-v1*k7-r1*k10*A-ku1-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,r1*k10*A,0,0,0,0,0,0,0,0,0,0;0,0,0,0,ku2,0,0,0,0,0,L3,0,-r2*k8*A-ku2-L3-L6*J^4/(J^4+mu^4),r2*k8*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,ku2,0,0,0,0,0,L3,v2*k7,-v2*k7-r2*k10*A-ku2-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,r2*k10*A,0,0,0,0,0,0,0,0;0,0,0,0,0,0,ku3,0,0,0,0,0,L5,0,-r3*k8*A-ku3-L5,r3*k8*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,ku3,0,0,0,0,0,L5,v3*k7,-v3*k7-r3*k10*A-ku3-L5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,r3*k10*A,0,0,0,0,0,0;0,k3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k3-k6*A-H2-L2*J^4/(J^4+delta^4),k6*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,H2,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k5,-k5-kd0*J-H2-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,kd0*J,0,0,0,0,0,0,0,0,0,H2,0;0,0,0,v1*k3,0,0,0,0,0,0,0,0,0,0,0,0,L1,0,-v1*k3-r1*k6*A-L1-L4*J^4/(J^4+epsilon^4),r1*k6*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L1,v1*k5,-v1*k5-kd1*J-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,kd1*J,0,0,0,0,0,0,0,0,0;0,0,0,0,0,v2*k3,0,0,0,0,0,0,0,0,0,0,0,0,L3,0,-v2*k3-r2*k6*A-L3-L6*J^4/(J^4+mu^4),r2*k6*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L3,v2*k5,-v2*k5-kd2*J-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0,kd2*J,0,0,0,0,0,0,0;0,0,0,0,0,0,0,v3*k3,0,0,0,0,0,0,0,0,0,0,0,0,L5,0,-v3*k3-r3*k6*A-L5,r3*k6*A,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L5,v3*k5,-v3*k5-kd3*J-L5,0,0,0,0,0,0,0,kd3*J,0,0,0,0,0;0,0,0,0,0,0,0,0,0,k9,0,0,0,0,0,0,ku0,0,0,0,0,0,0,0,-k9-k12*A-ku0-alpha*H2-L2*J^4/(J^4+delta^4),k12*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,alpha*H2,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku0,0,0,0,0,0,0,k11,-k11-ku0-alpha*H2-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,alpha*H2,0;0,0,0,0,0,0,0,0,0,0,0,v1*k9,0,0,0,0,0,0,ku1,0,0,0,0,0,L1,0,-v1*k9-r1*k12*A-ku1-L1-L4*J^4/(J^4+epsilon^4),r1*k12*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku1,0,0,0,0,0,L1,v1*k11,-v1*k11-ku1-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,v2*k9,0,0,0,0,0,0,ku2,0,0,0,0,0,L3,0,-v2*k9-r2*k12*A-ku2-L3-L6*J^4/(J^4+mu^4),r2*k12*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku2,0,0,0,0,0,L3,v2*k11,-v2*k11-ku2-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,v3*k9,0,0,0,0,0,0,ku3,0,0,0,0,0,L5,0,-v3*k9-r3*k12*A-ku3-L5,r3*k12*A,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku3,0,0,0,0,0,L5,v3*k11,-v3*k11-ku3-L5,0,0,0,0,0;H1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k2*A-H1,k2*A,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k1,-k1-k4*A,k4*A,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k3,-k3-k6*A,k6*A,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k5,-k5-H3,H3;H4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-H4];
end