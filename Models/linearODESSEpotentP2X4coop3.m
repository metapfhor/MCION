function linearODESSEpotentP2X4coop3(T,I)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 rho1 rho2 rho3 Acell p0 err Q;
	%#codegen
	
	generatorMatrixpotentP2X4coop3();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(9)+p0(10))*(V-E1)+g2*(p0(11)+p0(12)+p0(13)+p0(14)+p0(15)+p0(16))*(V-E2))-I(i))^2;
	end
end