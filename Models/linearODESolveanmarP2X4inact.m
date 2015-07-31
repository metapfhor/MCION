function  linearODESolveanmarP2X4inact()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 alpha beta J V A n Gmin K F G p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixanmarP2X4inact();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(6)+p0(7))*(V-E1)+g2*(p0(8)+p0(9))*(V-E2));
	end
end