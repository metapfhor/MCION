function  linearODESolvepotentP2X4coop2back()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 H1 H2 H2 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 rho1 rho2 rho3 gamma1 gamma2 gamma3 p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixpotentP2X4coop2back();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(9)+p0(10))*(V-E1)+g2*(p0(11)+p0(12)+p0(13)+p0(14)+p0(15)+p0(16))*(V-E2));
	end
end