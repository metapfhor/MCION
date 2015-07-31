function I = getTotalCurrentfullP2X7(Y,V)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 K4 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V n rd K1 K2 K3 g34 L2 Acell;
	I = Acell*10.^12*(g12*(Y(:,5)+Y(:,6)+Y(:,7)+Y(:,8)-Y(:,7)-Y(:,8)).*(V-E12)+g34*(Y(:,7)+Y(:,8)).*(V-E34));
end