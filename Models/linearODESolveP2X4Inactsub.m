function  linearODESolveP2X4Inactsub()
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 delta epsilon mu A J V p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixP2X4Inactsub();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(4)+p0(5))*(V-E1));
	end
end