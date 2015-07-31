function I = getTotalCurrentP2X4Stack2sub(Y)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H11 kd1 ks1 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 Acell V;

	I = 10.^12*(g1*(Y(:,3)+Y(:,4)).*(V-E1));
end