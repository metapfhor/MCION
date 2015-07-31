function linearODESSEphosph1P2X7(T,I)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L5 L6 H1 H2 H3 H4 H5 H6 H7 g0 g1 gd E12 E34 A V n K1 K2 K3 Acell p0 err Q;
	%#codegen
	
	generatorMatrixphosph1P2X7();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*((g0*(p0(5)+p0(6))+g1*(p0(7)+p0(8)))*(V-E12)+gd*(p0(11)+p0(12))*(V-E34))-I(i))^2;
	end
end