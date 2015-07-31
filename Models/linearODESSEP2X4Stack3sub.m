function linearODESSEP2X4Stack3sub(T,I)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H11 kd1 ks1 H3 H4 H51 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 Acell p0 err Q;

	%#codegen
	
	generatorMatrixP2X4Stack3sub();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(3)+p0(4))*(V-E1))-I(i))^2;
	end
end