function linearODESSEP2X4(T,I)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 alpha Acell p0 err Q V;
	%#codegen
	
	generatorMatrixP2X4();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(4))*(V-E1)+g2*(p0(5)+p0(6))*(V-E2))-I(i))^2;
	end
end