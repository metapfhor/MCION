function generatorMatrixP2X4Stack2sub()
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H11 kd1 ks1 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 Q;

Q=[-k2*A,k2*A,0,0,0,0,0,0,0;k1,-k1-k4*A-kd1,k4*A,0,0,kd1,0,0,0;0,k3,-k3-k6*A-kd1,k6*A,0,0,kd1,0,0;0,0,k5,-k5-kd1,0,0,0,kd1,0;H11,0,0,0,-d2*A-H11,d2*A,0,0,0;0,ks1,0,0,d1,-d1-d4*A-ks1,d4*A,0,0;0,0,ks1,0,0,d3,-d3-d6*A-ks1,d6*A,0;0,0,0,ks1,0,0,d5,-d5-ks1-H3,H3;H4,0,0,0,0,0,0,0,-H4];
end