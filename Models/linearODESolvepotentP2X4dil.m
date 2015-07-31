function  linearODESolvepotentP2X4dil()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 alpha a1 a2 a3 p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixpotentP2X4dil();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(17)+p0(18)+(p0(19)+p0(20))*a1+(p0(21)+p0(22))*a2+(p0(23)+p0(24))*a3)*(V-E1)+g2*(p0(25)+p0(26)+p0(27)+p0(28)+p0(29)+p0(30)+p0(31)+p0(32))*(V-E2));
	end
end