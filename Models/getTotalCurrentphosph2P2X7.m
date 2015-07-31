function I = getTotalCurrentphosph2P2X7(Y,V)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L5 L6 H1 H2 H3 H4 H5 H6 H7 g0 g1 gd E12 E34 A V n K1 K2 K3 Acell;
	I = Acell*10.^12*((g0*(Y(:,7)+Y(:,8))+gd*(Y(:,9)+Y(:,10))+gd*(Y(:,11)+Y(:,12))).*(V-E12)+gd*(Y(:,15)+Y(:,16)).*(V-E34));
end