function  linearODESolveP2X4Fortran()
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 p0 Acell Tsoln I Y imin imax t0 Q;
	%#codegen
	generatorMatrixP2X4Fortran();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(g1*(p0(7)+p0(8))*(V-E1)+g2*(p0(9)+p0(10)+p0(11)+p0(12))*(V-E2));
	end
end