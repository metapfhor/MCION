function linearODESSEP2X4Inactsub(T,I)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 delta epsilon mu A J V Acell p0 err Q;

	%#codegen
	
	generatorMatrixP2X4Inactsub();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(4)+p0(5))*(V-E1))-I(i))^2;
	end
end