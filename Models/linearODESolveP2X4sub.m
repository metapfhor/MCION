function  linearODESolveP2X4sub()
global k1 k2 k3 k4 k5 k6 H1 H2 H3 H4 g1 E1 E2 A J V p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixP2X4sub();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(3)+p0(4))*(V-E1));
	end
end