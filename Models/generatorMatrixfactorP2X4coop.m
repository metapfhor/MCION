function generatorMatrixfactorP2X4coop()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k21 k22 k23 k24 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 alpha beta gamma Q;
Q=[-k2*A-L2*J^n1/(J^n1+delta^n1),k2*A,L2*J^n1/(J^n1+delta^n1),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;k1,-k1-k4*A-H2-alpha*L2*J^n1/(J^n1+delta^n1),0,alpha*L2*J^n1/(J^n1+delta^n1),0,0,0,0,k4*A,0,0,0,0,0,0,0,0,H2,0,0,0;L1,0,-r1*k2*A-L1-L4*J^n2/(J^n2+epsilon^n2),r1*k2*A,L4*J^n2/(J^n2+epsilon^n2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,L1,v1*k1,-v1*k1-r1*k4*A-L1-alpha*L4*J^n2/(J^n2+epsilon^n2),0,alpha*L4*J^n2/(J^n2+epsilon^n2),0,0,0,0,r1*k4*A,0,0,0,0,0,0,0,0,0,0;0,0,L3,0,-r2*k2*A-L3-L6*J^n3/(J^n3+mu^n3),r2*k2*A,L6*J^n3/(J^n3+mu^n3),0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,L3,v2*k1,-v2*k1-r2*k4*A-L3-L6*J^n3/(J^n3+mu^n3),0,L6*J^n3/(J^n3+mu^n3),0,0,0,0,r2*k4*A,0,0,0,0,0,0,0,0;0,0,0,0,L5,0,-r3*k2*A-L5,r3*k2*A,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,L5,v3*k1,-v3*k1-r3*k4*A-L5,0,0,0,0,0,0,r3*k4*A,0,0,0,0,0,0;0,k3,0,0,0,0,0,0,-k3-k6*A-H2-beta*L2*J^n1/(J^n1+delta^n1),k6*A,beta*L2*J^n1/(J^n1+delta^n1),0,0,0,0,0,0,0,H2,0,0;0,0,0,0,0,0,0,0,k5,-k5-H2-gamma*L2*J^n1/(J^n1+delta^n1),0,gamma*L2*J^n1/(J^n1+delta^n1),0,0,0,0,0,0,0,H2,0;0,0,0,v1*k3,0,0,0,0,L1,0,-v1*k3-r1*k6*A-L1-beta*L4*J^n2/(J^n2+epsilon^n2),r1*k6*A,beta*L4*J^n2/(J^n2+epsilon^n2),0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,L1,v1*k5,-v1*k5-L1-gamma*L4*J^n2/(J^n2+epsilon^n2),0,gamma*L4*J^n2/(J^n2+epsilon^n2),0,0,0,0,0,0,0;0,0,0,0,0,v2*k3,0,0,0,0,L3,0,-v2*k3-r2*k6*A-L3-L6*J^n3/(J^n3+mu^n3),r2*k6*A,L6*J^n3/(J^n3+mu^n3),0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,L3,v2*k5,-v2*k5-L3-L6*J^n3/(J^n3+mu^n3),0,L6*J^n3/(J^n3+mu^n3),0,0,0,0,0;0,0,0,0,0,0,0,v3*k3,0,0,0,0,L5,0,-v3*k3-r3*k6*A-L5,r3*k6*A,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,L5,v3*k5,-v3*k5-L5,0,0,0,0,0;H1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k2*A-H1,k2*A,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k1,-k1-k4*A,k4*A,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k3,-k3-k6*A,k6*A,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k5,-k5-H3,H3;H4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-H4];
end