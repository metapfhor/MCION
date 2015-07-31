function I = getTotalCurrentpotentP2X4pool(Y)
global k1 k2 k3 k4 k5 k6 kd ku L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3 rho1 rho2 rho3 Acell V;
	I = 10.^12*(g1*(Y(:,15)+Y(:,16)).*(V-E1)+g2*(Y(:,17)+Y(:,18)+Y(:,19)+Y(:,20)+Y(:,21)+Y(:,22)+Y(:,23)+Y(:,24)+Y(:,25)+Y(:,26)+Y(:,27)+Y(:,28)).*(V-E2));
end