function I = getTotalCurrentP2X4Inact2factor(Y)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 W2 H0 H11 H12 H13 H14 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 r1 r2 r3 v1 v2 v3 Acell V;

	I = 10.^12*(g1*(Y(:,10)+Y(:,11)+Y(:,12)+Y(:,13)).*(V-E1)+g2*(Y(:,14)+Y(:,15)+Y(:,16)+Y(:,17)).*(V-E2));
end