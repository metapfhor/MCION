function I = getTotalCurrentP2X4StackDeMix2(Y)
global d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H11 H12 H13 H14 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 alpha1 alpha2 alpha3 Acell V;

	I = 10.^12*(g1*(Y(:,9)+Y(:,10)).*(V-E1)+g2*(Y(:,11)+Y(:,12)+Y(:,13)+Y(:,14)+Y(:,15)+Y(:,16)).*(V-E2));
end