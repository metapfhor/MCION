function I = getTotalCurrentpotentP2X4poolindepfull(Y)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3 Acell V;

	I = 10.^12*(g1*(Y(:,17)+Y(:,18)).*(V-E1)+g2*(Y(:,19)+Y(:,20)+Y(:,21)+Y(:,22)+Y(:,23)+Y(:,24)+Y(:,27)+Y(:,28)+Y(:,29)+Y(:,30)+Y(:,31)+Y(:,32)).*(V-E2));
end