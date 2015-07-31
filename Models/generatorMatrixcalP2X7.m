function generatorMatrixcalP2X7()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 rca kca koff C g12 g34 E12 E34 A V Q;
Q=[-kca*C-3*k2*A,3*k2*A,0,0,0,0,0,0,0,0,0,0,kca*C,0,0,0,0,0,0,0,0,0,0,0;k1,-kca*C-k1-2*k4*A-H3,0,0,2*k4*A,0,0,0,0,H3,0,0,0,kca*C,0,0,0,0,0,0,0,0,0,0;0,0,-kca*C-k1-2*k2*A,k1,0,0,0,2*k2*A,0,0,0,0,0,0,0,0,0,0,0,0,0,kca*C,0,0;L1,0,3*k2*A,-kca*C-3*k2*A-L1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kca*C,0,0,0;0,2*k3,0,0,-kca*C-2*k3-k6*A-H3,k6*A,0,0,0,0,H3,0,0,0,kca*C,0,0,0,0,0,0,0,0,0;0,0,0,0,3*k5,-kca*C-3*k5-L3-H7,L3,0,0,0,0,H7,0,0,0,kca*C,0,0,0,0,0,0,0,0;0,0,0,0,0,L2,-kca*C-3*k1-L2,3*k1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kca*C;0,0,2*k1,0,0,0,k2*A,-kca*C-2*k1-k2*A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,kca*C,0;H1,0,0,0,0,0,0,0,-kca*C-3*k2*A-H1,3*k2*A,0,0,0,0,0,0,kca*C,0,0,0,0,0,0,0;0,H2,0,0,0,0,0,0,k1,-kca*C-k1-2*k4*A-H2,2*k4*A,0,0,0,0,0,0,kca*C,0,0,0,0,0,0;0,0,0,0,H2,0,0,0,0,2*k3,-kca*C-2*k3-k6*A-H2,k6*A,0,0,0,0,0,0,kca*C,0,0,0,0,0;0,0,0,0,0,H6,0,0,0,0,3*k5,-kca*C-3*k5-H6,0,0,0,0,0,0,0,kca*C,0,0,0,0;koff,0,0,0,0,0,0,0,0,0,0,0,-koff-3*k2*rca*A,3*k2*rca*A,0,0,0,0,0,0,0,0,0,0;0,koff,0,0,0,0,0,0,0,0,0,0,k1*rca,-koff-k1*rca-2*k4*rca*A-H3,2*k4*rca*A,0,0,H3,0,0,0,0,0,0;0,0,0,0,koff,0,0,0,0,0,0,0,0,2*k3*rca,-koff-2*k3*rca-k6*rca*A-H3,k6*rca*A,0,0,H3,0,0,0,0,0;0,0,0,0,0,koff,0,0,0,0,0,0,0,0,3*k5*rca,-koff-3*k5*rca-L3-H7,0,0,0,H7,0,0,0,L3;0,0,0,0,0,0,0,0,koff,0,0,0,H1,0,0,0,-koff-3*k2*rca*A-H1,3*k2*rca*A,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,koff,0,0,0,H2,0,0,k1*rca,-koff-k1*rca-2*k4*rca*A-H2,2*k4*rca*A,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,koff,0,0,0,H2,0,0,2*k3*rca,-koff-2*k3*rca-k6*rca*A-H2,k6*rca*A,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,koff,0,0,0,H6,0,0,3*k5*rca,-koff-3*k5*rca-H6,0,0,0,0;0,0,0,koff,0,0,0,0,0,0,0,0,L1,0,0,0,0,0,0,0,-koff-3*k2*rca*A-L1,3*k2*rca*A,0,0;0,0,koff,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k1*rca,-koff-k1*rca-2*k2*rca*A,2*k2*rca*A,0;0,0,0,0,0,0,0,koff,0,0,0,0,0,0,0,0,0,0,0,0,0,2*k1*rca,-koff-2*k1*rca-k2*rca*A,k2*rca*A;0,0,0,0,0,0,koff,0,0,0,0,0,0,0,0,L2,0,0,0,0,0,0,3*k1*rca,-koff-3*k1*rca-L2];
end