function linearODESSEfullP2X7(T,I)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 K4 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V n rd K1 K2 K3 g34 L2 Acell p0 err Q;
	%#codegen
	
	generatorMatrixfullP2X7();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g12*(p0(5)+p0(6)+p0(7)+p0(8)-p0(7)-p0(8))*(V-E12)+g34*(p0(7)+p0(8))*(V-E34))-I(i))^2;
	end
end