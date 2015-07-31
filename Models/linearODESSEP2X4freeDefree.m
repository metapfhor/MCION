function linearODESSEP2X4freeDefree(T,I)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H1 H11 H12 H13 kd ks kd1 ks1 kd2 ks2 kd3 ks3 kd4 ks4 H3 g1 g2 E1 E2 delta epsilon mu A J V Acell p0 err Q;

	%#codegen
	
	generatorMatrixP2X4freeDefree();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(9)+p0(10))*(V-E1)+g2*(p0(11)+p0(12)+p0(13)+p0(14)+p0(15)+p0(16))*(V-E2))-I(i))^2;
	end
end