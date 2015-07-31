function generatorMatrixP2X4Inactsub()
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 delta epsilon mu A J V Q;

Q=[-H0,H0,0,0,0,0,0,0,0,0;
H5,-H5-k2*A,k2*A,0,0,0,0,0,0,0;
0,k1,-k1-k4*A-H2,k4*A,0,0,H2,0,0,0;
0,0,k3,-k3-k6*A-H2,k6*A,0,0,H2,0,0;
0,0,0,k5,-k5-H2,0,0,0,H2,0;
H1,0,0,0,0,-k2*A-H1,k2*A,0,0,0;
0,0,H1,0,0,k1,-k1-k4*A-H1,k4*A,0,0;
0,0,0,H1,0,0,k3,-k3-k6*A-H1,k6*A,0;
0,0,0,0,H1,0,0,k5,-k5-H1-H3,H3;
0,H4,0,0,0,0,0,0,0,-H4;];
end