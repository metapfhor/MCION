function generatorMatrixP2X4Inact2factor()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 W2 H0 H11 H12 H13 H14 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 r1 r2 r3 v1 v2 v3 Q;

Q=[-H0-W2*J^4/(J^4+delta^4),H0,0,W2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
H5,-H5-k2*A-L2*J^4/(J^4+delta^4),k2*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,k1,-k1-k4*A-kd1-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,k4*A,0,0,0,0,0,0,0,0,kd1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,L1,0,-r1*k2*A-L1-L4*J^4/(J^4+epsilon^4),r1*k2*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,0,L1,v1*k1,-v1*k1-r1*k4*A-kd2-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,r1*k4*A,0,0,0,0,0,0,0,0,0,0,kd2,0,0,0,0,0,0,0,0,0,0,0;
0,0,0,L3,0,-r2*k2*A-L3-L6*J^4/(J^4+mu^4),r2*k2*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,0,0,0,L3,v2*k1,-v2*k1-r2*k4*A-kd3-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,r2*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,kd3,0,0,0,0,0,0,0;
0,0,0,0,0,L5,0,-r3*k2*A-L5,r3*k2*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,L5,v3*k1,-v3*k1-r3*k4*A-kd4-L5,0,0,0,0,0,0,r3*k4*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kd4,0,0,0;
0,0,k3,0,0,0,0,0,0,-k3-k6*A-kd1-L2*J^4/(J^4+delta^4),k6*A,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,kd1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,k5,-k5-kd1-L2*J^4/(J^4+delta^4),0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,kd1,0,0,0,0,0,0,0,0,0,0,0,0,0;
0,0,0,0,v1*k3,0,0,0,0,L1,0,-v1*k3-r1*k6*A-kd2-L1-L4*J^4/(J^4+epsilon^4),r1*k6*A,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,kd2,0,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,0,L1,v1*k5,-v1*k5-kd2-L1-L4*J^4/(J^4+epsilon^4),0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,kd2,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,v2*k3,0,0,0,0,L3,0,-v2*k3-r2*k6*A-kd3-L3-L6*J^4/(J^4+mu^4),r2*k6*A,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,kd3,0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,0,0,0,L3,v2*k5,-v2*k5-kd3-L3-L6*J^4/(J^4+mu^4),0,L6*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,kd3,0,0,0,0,0;
0,0,0,0,0,0,0,0,v3*k3,0,0,0,0,L5,0,-v3*k3-r3*k6*A-kd4-L5,r3*k6*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kd4,0,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,0,L5,v3*k5,-v3*k5-kd4-L5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kd4,0;
0,ks1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k2*A-L2*J^4/(J^4+delta^4)-ks1,k2*A,0,0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0;
0,0,ks1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k1,-k1-k4*A-ks1-L2*J^4/(J^4+delta^4),k4*A,0,0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,ks1,0,0,0,0,0,0,0,0,k3,-k3-k6*A-ks1-L2*J^4/(J^4+delta^4),k6*A,0,0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,0,ks1,0,0,0,0,0,0,0,0,k5,-k5-ks1-L2*J^4/(J^4+delta^4)-H3,0,0,0,L2*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,H3;
0,0,0,ks2,0,0,0,0,0,0,0,0,0,0,0,0,0,L1,0,0,0,-r1*k2*A-L1-L4*J^4/(J^4+epsilon^4)-ks2,r1*k2*A,0,0,0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0;
0,0,0,0,ks2,0,0,0,0,0,0,0,0,0,0,0,0,0,L1,0,0,v1*k1,-v1*k1-r1*k4*A-ks2-L1-L4*J^4/(J^4+epsilon^4),r1*k4*A,0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,0,0,ks2,0,0,0,0,0,0,0,L1,0,0,v1*k3,-v1*k3-r1*k6*A-ks2-L1-L4*J^4/(J^4+epsilon^4),r1*k6*A,0,0,L4*J^4/(J^4+epsilon^4),0,0,0,0,0,0;
0,0,0,0,0,0,0,0,0,0,0,0,ks2,0,0,0,0,0,0,0,L1,0,0,v1*k5,-v1*k5-ks2-L1-L4*J^4/(J^4+epsilon^4)-H3D,0,0,0,L4*J^4/(J^4+epsilon^4),0,0,0,0,H3D;
0,0,0,0,0,ks3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L3,0,0,-r2*k2*A-L3-L6*J^4/(J^4+mu^4)-ks3,r2*k2*A,0,0,L6*J^4/(J^4+mu^4),0,0,0,0;
0,0,0,0,0,0,ks3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L3,0,0,0,v2*k1,-v2*k1-r2*k4*A-ks3-L3-L6*J^4/(J^4+mu^4),r2*k4*A,0,0,L6*J^4/(J^4+mu^4),0,0,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,ks3,0,0,0,0,0,0,0,0,0,L3,0,0,v2*k3,-v2*k3-r2*k6*A-ks3-L3-L6*J^4/(J^4+mu^4),r2*k6*A,0,0,L6*J^4/(J^4+mu^4),0,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,0,ks3,0,0,0,0,0,0,0,0,0,L3,0,0,v2*k5,-v2*k5-ks3-L3-L6*J^4/(J^4+mu^4)-H3D,0,0,0,L6*J^4/(J^4+mu^4),H3D;
0,0,0,0,0,0,0,ks4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L5,0,0,0,-r3*k2*A-L5-ks4,r3*k2*A,0,0,0;
0,0,0,0,0,0,0,0,ks4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,L5,0,0,v3*k1,-v3*k1-r3*k4*A-ks4-L5,r3*k4*A,0,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ks4,0,0,0,0,0,0,0,0,0,0,0,L5,0,0,v3*k3,-v3*k3-r3*k6*A-ks4-L5,r3*k6*A,0;
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,ks4,0,0,0,0,0,0,0,0,0,0,0,L5,0,0,v3*k5,-v3*k5-ks4-L5-H3D,H3D;
H4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-H4;];
end