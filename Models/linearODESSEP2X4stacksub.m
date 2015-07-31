function linearODESSEP2X4stacksub(T,I)
global d1 d2 d3 d4 d5 d6 d7 d8 k1 k2 k3 k4 k5 k6 H11 H21 H3 H4 g1 g2 E1 E2 A J V Acell p0 err Q;

	%#codegen
	
	generatorMatrixP2X4stacksub();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*g1*(p0(3)+p0(4))*(V-E1)-I(i))^2;
	end
end