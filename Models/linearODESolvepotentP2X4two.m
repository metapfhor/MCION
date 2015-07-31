function  linearODESolvepotentP2X4two()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L5 L6 H1 H2 H2 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixpotentP2X4two();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(9)+p0(10))*(V-E1)+g2*(p0(11)+p0(12)+p0(13)+p0(14)+p0(15)+p0(16))*(V-E2));
	end
end