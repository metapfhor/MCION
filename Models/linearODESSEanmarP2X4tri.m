function linearODESSEanmarP2X4tri(T,I)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 H6 H7 g1 g2 E1 E2 alpha beta gamma J V A n1 n2 Gmin Hmin rmin Acell p0 err Q;

	%#codegen
	
	generatorMatrixanmarP2X4tri();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(6)+p0(7))*(V-E1)+g2*(p0(8)+p0(9))*(V-E2))-I(i))^2;
	end
end