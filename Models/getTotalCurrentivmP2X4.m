function I = getTotalCurrentivmP2X4(Y)
global kon koff k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 L7 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 a1 a2 alpha beta gamma Acell V;
	I = Acell*10.^12*(g1*(Y(:,9)+Y(:,10)+a1*(Y(:,11)+Y(:,12))+a2*(Y(:,13)+Y(:,14))).*(V-E1)+g2*(Y(:,15)+Y(:,16)).*(V-E2));
end