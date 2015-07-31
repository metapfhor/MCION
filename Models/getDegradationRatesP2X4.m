function rates = getDegradationRatesP2X4(A)
	global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3;
	rates=[k2*A,L2*J,k1,k4*A,H2,L2*J,k8*A,L1,L4*J,k7,k10*A,L1,L4*J,k8*alpha*A,L3,k7,k10*alpha*A,L3,k3,k6*A,H2,L2*J,k5,H2,L2*J,k9,k12*A,L1,L4*J,k11,L1,L4*J,k9,k12*alpha*A,L3,k11,L3,k2*A,H1,k1,k4*A,k3,k6*A,k5,H3,H4];
end