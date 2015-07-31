function linearODESSEP2X4Inact2factor2(T,I)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 W1 W2 H0 H11 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 r1 r2 r3 v1 v2 v3 Acell p0 err Q;

	%#codegen
	
	generatorMatrixP2X4Inact2factor2();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(g1*(p0(10)+p0(11)+p0(12)+p0(13))*(V-E1)+g2*(p0(14)+p0(15)+p0(16)+p0(17))*(V-E2))-I(i))^2;
	end
end