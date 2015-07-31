function I = getTotalCurrentpotentP2X4sub(Y)
global k1 k2 k3 k4 k5 k6 H1 H2 H3 H4 g1 E1 E2 A J V Acell V;
	I = 10.^12*(g1*(Y(:,3)+Y(:,4)).*(V-E1));
end