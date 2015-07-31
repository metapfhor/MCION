function  linearODESolveomarP2X4cooppotent1()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k21 k22 k23 k24 L10 L20 L30 L40 L50 L60 L11 L21 L31 L41 L51 L61 L12 L22 L32 L42 L52 L62 L13 L23 L33 L43 L53 L63 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 a1 p0 Acell Tsoln I Y imin imax t0 Q;
	%#codegen
	generatorMatrixomarP2X4cooppotent1();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(g1*(p0(9)+p0(10)+a1*(p0(11)+p0(12)))*(V-E1)+g2*(p0(13)+p0(14)+p0(15)+p0(16))*(V-E2));
	end
end