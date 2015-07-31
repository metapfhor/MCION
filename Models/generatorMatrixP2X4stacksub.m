function generatorMatrixP2X4stacksub()
global d1 d2 d3 d4 d5 d6 d7 d8 k1 k2 k3 k4 k5 k6 H11 H21 H3 H4 g1 g2 E1 E2 A J V Q;

Q=[-k2*A,k2*A,0,0,0,0,0;k1,-k1-k4*A-H21,k4*A,0,0,H21,0;0,k3,-k3-k6*A-H21,k6*A,0,H21,0;0,0,k5,-k5-H21,0,H21,0;H11,0,0,0,-d2*A-H11,d2*A,0;0,0,0,0,d1,-d1-H3,H3;H4,0,0,0,0,0,-H4];
end