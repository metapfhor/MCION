function linearODESSEpotentP2X4sub(T,I)
global k1 k2 k3 k4 k5 k6 H1 H2 H3 H4 g1 E1 E2 A J V Acell p0 err Q;
	%#codegen
	
	generatorMatrixpotentP2X4sub();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(3)+p0(4))*(V-E1))-I(i))^2;
	end
end