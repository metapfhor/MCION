function generatorMatrixP2X4stack()
global d1 d2 d3 d4 d5 d6 d7 d8 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H11 H12 H13 H14 H21 H22 H23 H24 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 Q;

Q=[-k2*A-L21*J^4/(J^4+delta^4),k2*A,L21*J^4/(J^4+delta^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;k1,-k1-k4*A-H21-L22*J^4/(J^4+delta^4),0,L22*J^4/(J^4+delta^4),0,0,0,0,k4*A,0,0,0,0,0,0,0,0,H21,0,0,0,0,0,0,0;L11,0,-k8*A-L11-L41*J^4/(J^4+epsilon^4),k8*A,L41*J^4/(J^4+epsilon^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,L12,k7,-k7-k10*A-H22-L12-L42*J^4/(J^4+epsilon^4),0,L42*J^4/(J^4+epsilon^4),0,0,0,0,k10*A,0,0,0,0,0,0,0,0,H22,0,0,0,0,0;0,0,L31,0,-k14*A-L31-L61*J^4/(J^4+mu^4),k14*A,L61*J^4/(J^4+mu^4),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,L32,k13,-k13-k16*A-H23-L32-L62*J^4/(J^4+mu^4),0,L62*J^4/(J^4+mu^4),0,0,0,0,k16*A,0,0,0,0,0,0,0,0,H23,0,0,0;0,0,0,0,L51,0,-k20*A-L51,k20*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,L52,k19,-k19-k22*A-H24-L52,0,0,0,0,0,0,k22*A,0,0,0,0,0,0,0,0,H24,0;0,k3,0,0,0,0,0,0,-k3-k6*A-H21-L23*J^4/(J^4+delta^4),k6*A,L23*J^4/(J^4+delta^4),0,0,0,0,0,0,H21,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,k5,-k5-H21-L24*J^4/(J^4+delta^4),0,L24*J^4/(J^4+delta^4),0,0,0,0,0,H21,0,0,0,0,0,0,0;0,0,0,k9,0,0,0,0,L13,0,-k9-k12*A-H22-L13-L43*J^4/(J^4+epsilon^4),k12*A,L43*J^4/(J^4+epsilon^4),0,0,0,0,0,0,H22,0,0,0,0,0;0,0,0,0,0,0,0,0,0,L14,k11,-k11-H22-L14-L44*J^4/(J^4+epsilon^4),0,L44*J^4/(J^4+epsilon^4),0,0,0,0,0,H22,0,0,0,0,0;0,0,0,0,0,k15,0,0,0,0,L33,0,-k15-k18*A-H23-L33-L63*J^4/(J^4+mu^4),k18*A,L63*J^4/(J^4+mu^4),0,0,0,0,0,0,H23,0,0,0;0,0,0,0,0,0,0,0,0,0,0,L34,k17,-k17-H23-L34-L64*J^4/(J^4+mu^4),0,L64*J^4/(J^4+mu^4),0,0,0,0,0,H23,0,0,0;0,0,0,0,0,0,0,k21,0,0,0,0,L53,0,-k21-k24*A-H24-L53,k24*A,0,0,0,0,0,0,0,H24,0;0,0,0,0,0,0,0,0,0,0,0,0,0,L54,k23,-k23-H24-L54,0,0,0,0,0,0,0,H24,0;H11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-d2*A-H11,d2*A,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d1,-d1-H3,0,0,0,0,0,0,H3;0,0,0,H12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-d4*A-H12,d4*A,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d3,-d3,0,0,0,0,0;0,0,0,0,0,H13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-d6*A-H13,d6*A,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d5,-d5,0,0,0;0,0,0,0,0,0,0,H14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-d8*A-H14,d8*A,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d7,-d7,0;H4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-H4];
end