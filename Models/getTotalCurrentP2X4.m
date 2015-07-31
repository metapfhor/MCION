function I = getTotalCurrentP2X4(Y)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 gamma Acell A J V;
% 	I = Acell*10^12*(g1*(Y(:,7)+Y(:,8)).*(V-E1)+g2*(Y(:,9)+Y(:,10)+Y(:,11)+Y(:,12)).*(V-E2));

	I = Acell*10^12*(g1*(Y(:,7)+Y(:,8)).*(V-E1)+g2*(Y(:,9)+Y(:,10)+Y(:,11)+Y(:,12)+Y(:,20)+Y(:,21)).*(V-E2));

end