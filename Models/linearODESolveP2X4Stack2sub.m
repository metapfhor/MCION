function  linearODESolveP2X4Stack2sub()
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H11 kd1 ks1 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixP2X4Stack2sub();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(3)+p0(4))*(V-E1));
	end
end