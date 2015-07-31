function I = getTotalCurrentpotent2P2X4indep(Y)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k21 k22 k23 k24 L1 L2 L3 L4 L5 L6 L7 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 a1 a2 alpha beta gamma Acell V;
	I = Acell*10.^12*(g1*(Y(:,9)+Y(:,10)+a1*(Y(:,11)+Y(:,12))+a2*(Y(:,13)+Y(:,14))).*(V-E1)+g2*(Y(:,15)+Y(:,16)).*(V-E2));
end