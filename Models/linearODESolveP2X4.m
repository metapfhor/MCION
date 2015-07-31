function  linearODESolveP2X4()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 p0 Acell Tsoln I Y imin imax t0 Q V;
	%#codegen
	generatorMatrixP2X4();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(g1*(p0(4))*(V-E1)+g2*(p0(5)+p0(6))*(V-E2));
	end
end