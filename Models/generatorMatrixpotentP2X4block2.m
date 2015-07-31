function generatorMatrixpotentP2X4block2()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 kdd0 kuu0 kdd1 kuu1 kdd2 kuu2 kdd3 kuu3 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 L13 L14 L15 L16 L17 L18 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3 u1 u2 u3 q1 q2 q3 Q;

Q=[-k2*A-kd0*J-L2*J^4/(J^4+delta^4),k2*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,kd0*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;k1,-k1-k4*A-kd0*J-H2-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,kd0*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,H2,0,0,0;L1,0,-r1*k2*A-kd1*J-L1-L4*J^4/(J^4+epsilon^4),r1*k2*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,kd1*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,L1,v1*k1,-v1*k1-r1*k4*A-kd1*J-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,kd1*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,r1*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,L3,0,-r2*k2*A-kd2*J-L3-L6*J^4/(J^4+mu^4),r2*k2*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,kd2*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,L3,v2*k1,-v2*k1-r2*k4*A-kd2*J-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0,kd2*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,r2*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,L5,0,-r3*k2*A-kd3*J-L5,r3*k2*A,0,0,0,0,0,0,kd3*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,L5,v3*k1,-v3*k1-r3*k4*A-kd3*J-L5,0,0,0,0,0,0,0,kd3*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,r3*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;ku0,0,0,0,0,0,0,0,-ku0-kdd0*J-L8*J^4/(J^4+delta^4),0,L8*J^4/(J^4+delta^4),0,0,0,0,0,kdd0*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,ku0,0,0,0,0,0,0,0,-ku0-kdd0*J-L8*J^4/(J^4+delta^4),0,L8*J^4/(J^4+delta^4),0,0,0,0,0,kdd0*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,ku1,0,0,0,0,0,L7,0,-s1*k8*A-ku1-kdd1*J-L7-L10*J^4/(J^4+epsilon^4),s1*k8*A,L10*J^4/(J^4+epsilon^4),0,0,0,0,0,kdd1*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,ku1,0,0,0,0,0,L7,w1*k7,-w1*k7-s1*k10*A-ku1-kdd1*J-L7-L10*J^4/(J^4+epsilon^4),0,L10*J^4/(J^4+epsilon^4),0,0,0,0,0,kdd1*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s1*k10*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,ku2,0,0,0,0,0,L9,0,-s2*k8*A-ku2-kdd2*J-L9-L12*J^4/(J^4+mu^4),s2*k8*A,L12*J^4/(J^4+mu^4),0,0,0,0,0,kdd2*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,ku2,0,0,0,0,0,L9,w2*k7,-w2*k7-s2*k10*A-ku2-kdd2*J-L9-L12*J^4/(J^4+mu^4),0,L12*J^4/(J^4+mu^4),0,0,0,0,0,kdd2*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s2*k10*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,ku3,0,0,0,0,0,L11,0,-s3*k8*A-ku3-kdd3*J-L11,s3*k8*A,0,0,0,0,0,0,kdd3*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,ku3,0,0,0,0,0,L11,w3*k7,-w3*k7-s3*k10*A-ku3-kdd3*J-L11,0,0,0,0,0,0,0,kdd3*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s3*k10*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,kuu0,0,0,0,0,0,0,0,-kuu0-L14*J^4/(J^4+delta^4),0,L14*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,kuu0,0,0,0,0,0,0,0,-kuu0-L14*J^4/(J^4+delta^4),0,L14*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,kuu1,0,0,0,0,0,L13,0,-q1*k14*A-kuu1-L13-L16*J^4/(J^4+epsilon^4),q1*k14*A,L16*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,kuu1,0,0,0,0,0,L13,u1*k7,-u1*k7-q1*k16*A-kuu1-L13-L16*J^4/(J^4+epsilon^4),0,L16*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,q1*k16*A,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,kuu2,0,0,0,0,0,L15,0,-q2*k14*A-kuu2-L15-L18*J^4/(J^4+mu^4),q2*k14*A,L18*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,kuu2,0,0,0,0,0,L15,u2*k7,-u2*k7-q2*k16*A-kuu2-L15-L18*J^4/(J^4+mu^4),0,L18*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,q2*k16*A,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu3,0,0,0,0,0,L17,0,-q3*k14*A-kuu3-L17,q3*k14*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu3,0,0,0,0,0,L17,u3*k7,-u3*k7-q3*k16*A-kuu3-L17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,q3*k16*A,0,0,0,0,0,0;0,k3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k3-k6*A-kd0*J-H2-L2*J^4/(J^4+delta^4),k6*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,kd0*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,H2,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k5,-k5-kd0*J-H2-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,kd0*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,H2,0;0,0,0,v1*k3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L1,0,-v1*k3-r1*k6*A-kd1*J-L1-L4*J^4/(J^4+epsilon^4),r1*k6*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,kd1*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L1,v1*k5,-v1*k5-kd1*J-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,kd1*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,v2*k3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L3,0,-v2*k3-r2*k6*A-kd2*J-L3-L6*J^4/(J^4+mu^4),r2*k6*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,kd2*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L3,v2*k5,-v2*k5-kd2*J-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0,kd2*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,v3*k3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L5,0,-v3*k3-r3*k6*A-kd3*J-L5,r3*k6*A,0,0,0,0,0,0,kd3*J,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L5,v3*k5,-v3*k5-kd3*J-L5,0,0,0,0,0,0,0,kd3*J,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku0,0,0,0,0,0,0,0,-ku0-kdd0*J-L8*J^4/(J^4+delta^4),0,L8*J^4/(J^4+delta^4),0,0,0,0,0,kdd0*J,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku0,0,0,0,0,0,0,0,-ku0-kdd0*J-L8*J^4/(J^4+delta^4),0,L8*J^4/(J^4+delta^4),0,0,0,0,0,kdd0*J,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,w1*k9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku1,0,0,0,0,0,L7,0,-w1*k9-s1*k12*A-ku1-kdd1*J-L7-L10*J^4/(J^4+epsilon^4),s1*k12*A,L10*J^4/(J^4+epsilon^4),0,0,0,0,0,kdd1*J,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku1,0,0,0,0,0,L7,w1*k11,-w1*k11-ku1-kdd1*J-L7-L10*J^4/(J^4+epsilon^4),0,L10*J^4/(J^4+epsilon^4),0,0,0,0,0,kdd1*J,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,w2*k9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku2,0,0,0,0,0,L9,0,-w2*k9-s2*k12*A-ku2-kdd2*J-L9-L12*J^4/(J^4+mu^4),s2*k12*A,L12*J^4/(J^4+mu^4),0,0,0,0,0,kdd2*J,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku2,0,0,0,0,0,L9,w2*k11,-w2*k11-ku2-kdd2*J-L9-L12*J^4/(J^4+mu^4),0,L12*J^4/(J^4+mu^4),0,0,0,0,0,kdd2*J,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,w3*k9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku3,0,0,0,0,0,L11,0,-w3*k9-s3*k12*A-ku3-kdd3*J-L11,s3*k12*A,0,0,0,0,0,0,kdd3*J,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ku3,0,0,0,0,0,L11,w3*k11,-w3*k11-ku3-kdd3*J-L11,0,0,0,0,0,0,0,kdd3*J,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu0,0,0,0,0,0,0,0,-kuu0-L14*J^4/(J^4+delta^4),0,L14*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu0,0,0,0,0,0,0,0,-kuu0-L14*J^4/(J^4+delta^4),0,L14*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,u1*k9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu1,0,0,0,0,0,L13,0,-u1*k9-q1*k18*A-kuu1-L13-L16*J^4/(J^4+epsilon^4),q1*k18*A,L16*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu1,0,0,0,0,0,L13,u1*k11,-u1*k11-kuu1-L13-L16*J^4/(J^4+epsilon^4),0,L16*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,u2*k9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu2,0,0,0,0,0,L15,0,-u2*k9-q2*k18*A-kuu2-L15-L18*J^4/(J^4+mu^4),q2*k18*A,L18*J^4/(J^4+mu^4),0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu2,0,0,0,0,0,L15,u2*k11,-u2*k11-kuu2-L15-L18*J^4/(J^4+mu^4),0,L18*J^4/(J^4+mu^4),0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,u3*k9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu3,0,0,0,0,0,L17,0,-u3*k9-q3*k18*A-kuu3-L17,q3*k18*A,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kuu3,0,0,0,0,0,L17,u3*k11,-u3*k11-kuu3-L17,0,0,0,0,0;H1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k2*A-H1,k2*A,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k1,-k1-k4*A,k4*A,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k3,-k3-k6*A,k6*A,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k5,-k5-H3,H3;H4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-H4];
end