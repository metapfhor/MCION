function linearODESSEfullerStickP2X7(T,I)
global k1 K1 k3 K2 k5 K3 k7 Ks3 k9 Ks2 k11 Ks1 L1 Kd L3 L4 L5 Ks H1 Kds H7 g12 g34 E12 E34 A V alpha1 alpha3 alpha32 alpha100 alpha k2 k4 k6 L2 L6 k8 k10 k12 H6 Acell p0 err Q;
	%#codegen
	
	generatorMatrixfullerStickP2X7();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g12*(p0(3)+p0(4))*(V-E12)+g34*(p0(5)+p0(12)+p0(13))*(V-E34))-I(i))^2;
	end
end