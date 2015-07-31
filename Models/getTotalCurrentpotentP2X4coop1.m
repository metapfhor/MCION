function I = getTotalCurrentpotentP2X4coop1(Y)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 a1 a2 a3 rho1 rho2 rho3 Acell V;
	I = 10.^12*(g1*(Y(:,9)+Y(:,10)).*(V-E1)+g2*(Y(:,11)+Y(:,12)+Y(:,13)+Y(:,14)+Y(:,15)).*(V-E2));
end