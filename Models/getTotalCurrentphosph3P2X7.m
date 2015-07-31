function I = getTotalCurrentphosph3P2X7(Y,V)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L5 L6 H1 H2 H3 H4 H5 H6 H7 g0 g1 gd E12 E34 A V n K1 K2 K3 Acell;
	I = Acell*10.^12*((g0*(Y(:,9)+Y(:,10))+g1*(Y(:,11)+Y(:,12))+g2*(Y(:,13)+Y(:,14))+g3*(Y(:,15)+Y(:,16))).*(V-E12)+gd*(Y(:,19)+Y(:,20)).*(V-E34));
end