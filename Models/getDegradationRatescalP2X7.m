function rates = getDegradationRatescalP2X7(A)
	global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 r1 r2 kca koff;
	rates=[kca*C,3*k2*A,kca*C,k1,2*k4*A,H3,kca*C,k1,2*k2*A,kca*C,3*k2*A,L1,kca*C,2*k3,k6*A,H5,kca*C,3*k5,L3,H7,kca*C,3*k1,L2,kca*C,2*k1,k2*A,kca*C,3*k2*A,H1,kca*C,k1,2*k4*A,H2,kca*C,2*k3,k6*A,H4,kca*C,3*k5,H6,koff,3*k2*r2*A,koff,k1*r1,2*k4*r2*A,H3,koff,2*k3*r1,k6*r2*A,H5,koff,3*k5*r1,L3,H7,koff,3*k2*r2*A,H1,koff,k1*r1,2*k4*r2*A,H2,koff,2*k3*r1,k6*r2*A,H4,koff,3*k5*r1,H6,koff,3*k2*r2*A,L1,koff,k1*r1,2*k2*r2*A,koff,2*k1*r1,k2*r2*A,koff,3*k1*r1,L2];
end