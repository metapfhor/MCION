function I = getTotalCurrentP2X4Inactsub(Y)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 delta epsilon mu A J V Acell V;

	I = 10.^12*(g1*(Y(:,4)+Y(:,5)).*(V-E1));
end