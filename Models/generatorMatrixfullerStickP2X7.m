function generatorMatrixfullerStickP2X7()
global k1 K1 k3 K2 k5 K3 k7 Ks3 k9 Ks2 k11 Ks1 L1 Kd L3 L4 L5 Ks H1 Kds H7 g12 g34 E12 E34 A V alpha1 alpha3 alpha32 alpha100 alpha k2 k4 k6 L2 L6 k8 k10 k12 H6 Q;
Q=[-k2*A,k2*A,0,0,0,0,0,0,0,0,0,0,0;k1,-k1-k4*A,k4*A,0,0,0,0,0,0,0,0,0,0;0,k3,-k3-k6*A,k6*A,0,0,0,0,0,0,0,0,0;0,0,k5,-k5-L3-H7,L3,0,0,0,H7,0,0,0,0;0,0,0,L2,-L2-L5,0,0,0,0,0,0,0,L5;0,0,0,0,0,-k2*A,k2*A,0,0,0,0,0,0;0,0,0,0,0,k1,-k1-k4*A,k4*A,0,0,0,0,0;0,0,0,0,0,0,k3,-k3-k6*A,k6*A,0,0,0,0;0,0,0,H6,0,0,0,k5,-k5-H6,0,0,0,0;0,0,0,0,0,0,0,0,0,-k12*A,k12*A,0,0;0,0,0,0,0,0,0,0,0,k11,-k11-k10*A,k10*A,0;0,0,0,0,0,0,0,0,0,0,k9,-k9-k8*A,k8*A;0,0,0,0,L6,0,0,0,0,0,0,k7,-k7-L6];
end