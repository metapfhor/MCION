function I = getTotalCurrentP2X4StackDeMix4(Y)
global d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d19 d20 d21 d22 d23 d24 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L51 L52 L53 L54 L61 L62 L63 L64 H11 H12 H14 kd1 kd2 kd4 ks1 ks2 ks4 H3 H3D H4 g1 g2 E1 E2 delta mu A J V n1 n2 n3 alpha1 alpha3 beta1 beta3 Acell V;

	I = 10.^12*(g1*(Y(:,7)+Y(:,8)).*(V-E1)+g2*(Y(:,9)+Y(:,10)+Y(:,11)+Y(:,12)).*(V-E2));
end