function I = getTotalCurrentanmarP2X4tri(Y)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 H6 H7 g1 g2 E1 E2 alpha beta gamma J V A n1 n2 Gmin Hmin rmin Acell V;

	I = 10.^12*(g1*(Y(:,6)+Y(:,7)).*(V-E1)+g2*(Y(:,8)+Y(:,9)).*(V-E2));
end