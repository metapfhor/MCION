function I = getTotalCurrentanmarP2X4(Y)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 g1 g2 E1 E2 alpha beta J K F G Acell V;

	I = 10.^12*(g1*(Y(:,5)+Y(:,6)).*(V-E1)+g2*(Y(:,7)+Y(:,8)).*(V-E2));
end