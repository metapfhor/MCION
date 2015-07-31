function I = getTotalCurrentP2X4stacksub(Y)
global d1 d2 d3 d4 d5 d6 d7 d8 k1 k2 k3 k4 k5 k6 H11 H21 H3 H4 g1 g2 E1 E2 A J V Acell V;

	I = 10.^12*g1*(Y(:,3)+Y(:,4)).*(V-E1);
end