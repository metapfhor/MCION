function rates = getDegradationRatesfullP2X7(A)
	global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34;
	rates=[3*k2*A,k1,2*k4*A,H3,k1,2*k2*A,3*k2*A,L1,2*k3,k6*A,H5,3*k5,L3,H7,3*k1,L2,2*k1,k2*A,3*k2*A,H1,k1,2*k4*A,H2,2*k3,k6*A,H4,3*k5,H6];
end