function linearODESSEP2X4Inact12(T,I)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H0 H5 H2 H1 H3 H4 W2 g1 g2 E1 E2 delta epsilon mu A J V Acell p0 err Q;

	%#codegen
	
	generatorMatrixP2X4Inact12();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(10)+p0(11)+p0(12)+p0(13))*(V-E1)+g2*(p0(14)+p0(15)+p0(16)+p0(17))*(V-E2))-I(i))^2;
	end
end