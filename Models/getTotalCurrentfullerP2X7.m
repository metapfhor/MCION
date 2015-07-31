function I = getTotalCurrentfullerP2X7(Y,V)
global k1 K1 k3 K2 k5 K3 k7 K5 k9 K6 k11 K7 k13 K9 k15 K10 k17 K11 L1 K4 L3 L4 L5 K8 H1 K12 H7 g12 g34 E12 E34 A V k2 k4 k6 L2 k8 k10 k12 L6 k14 k16 k18 H6 Acell;
	I = Acell*10^12*(g12*(Y(:,5)+Y(:,6)).*(V-E12)+g34*(Y(:,7)+Y(:,8)+Y(:,15)+Y(:,16)).*(V-E34));
end