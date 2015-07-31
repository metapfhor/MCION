function linearODESSEpotentP2X4block(T,I)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 kdd0 kuu0 kdd1 kuu1 kdd2 kuu2 kdd3 kuu3 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 L13 L14 L15 L16 L17 L18 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3 u1 u2 u3 q1 q2 q3 Acell p0 err Q;

	%#codegen
	
	generatorMatrixpotentP2X4block();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(25)+p0(26))*(V-E1)+g2*(p0(27)+p0(28)+p0(29)+p0(30)+p0(31)+p0(32)+p0(35)+p0(36)+p0(37)+p0(38)+p0(39)+p0(40))*(V-E2))-I(i))^2;
	end
end