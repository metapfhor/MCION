function I = getTotalCurrentfactorP2X4coopsub(Y)
global k1 k2 k3 k4 k5 k6 H1 H2 H3 H4 g1 g2 E1 E2 A J V Acell V;
	I = Acell*10.^12*(g1*(Y(:,3)+Y(:,4)).*(V-E1));
end