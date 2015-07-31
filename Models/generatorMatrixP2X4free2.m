function generatorMatrixP2X4free2()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H1 H21 H22 H23 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v3 r1 r3 Q;

Q=[-k2*A-L21*J^4/(J^4+delta^4),k2*A,L21*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;k1,-k1-k4*A-H21-L22*J^4/(J^4+delta^4),0,L22*J^4/(J^4+delta^4),0,0,0,0,k4*A,0,0,0,0,0,0,0,0,H21,0,0,0;L11,0,-k8*A-L11-L41*J^4/(J^4+epsilon^4),k8*A,L41*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,L12,k7,-k7-k10*A-L12-L42*J^4/(J^4+epsilon^4),0,L42*J^4/(J^4+epsilon^4),0,0,0,0,k10*A,0,0,0,0,0,0,0,0,0,0;0,0,L31,0,-k14*A-L31-L61*J^4/(J^4+mu^4),k14*A,L61*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,L32,k13,-k13-k16*A-L32-L62*J^4/(J^4+mu^4),0,L62*J^4/(J^4+mu^4),0,0,0,0,k16*A,0,0,0,0,0,0,0,0;0,0,0,0,L51,0,-k20*A-L51,k20*A,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,L52,k19,-k19-k22*A-L52,0,0,0,0,0,0,k22*A,0,0,0,0,0,0;0,k3,0,0,0,0,0,0,-k3-k6*A-H22-L23*J^4/(J^4+delta^4),k6*A,L23*J^4/(J^4+delta^4),0,0,0,0,0,0,0,H22,0,0;0,0,0,0,0,0,0,0,k5,-k5-H23-L24*J^4/(J^4+delta^4),0,L24*J^4/(J^4+delta^4),0,0,0,0,0,0,0,H23,0;0,0,0,k9,0,0,0,0,L13,0,-k9-k12*A-L13-L43*J^4/(J^4+epsilon^4),k12*A,L43*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,L14,k11,-k11-L14-L44*J^4/(J^4+epsilon^4),0,L44*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0;0,0,0,0,0,k15,0,0,0,0,L33,0,-k15-k18*A-L33-L63*J^4/(J^4+mu^4),k18*A,L63*J^4/(J^4+mu^4),0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,L34,k17,-k17-L34-L64*J^4/(J^4+mu^4),0,L64*J^4/(J^4+mu^4),0,0,0,0,0;0,0,0,0,0,0,0,k21,0,0,0,0,L53,0,-k21-k24*A-L53,k24*A,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,L54,k23,-k23-L54,0,0,0,0,0;H1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-k2*A-H1,k2*A,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k1,-k1-k4*A,k4*A,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k3,-k3-k6*A,k6*A,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k5,-k5-H3,H3;H4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-H4];
end