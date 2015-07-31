function  linearODESolveP2XInact2noallo()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 W2 H0 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A V p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixP2XInact2noallo();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(10)+p0(11)+p0(12)+p0(13))*(V-E1)+g2*(p0(14)+p0(15)+p0(16)+p0(17))*(V-E2));
	end
end