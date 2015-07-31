function  linearODESolveP2X4Inact2factor()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 W2 H0 H11 H12 H13 H14 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 r1 r2 r3 v1 v2 v3 p0 Acell Tsoln I Y imin imax t0 Q;

	%#codegen
	generatorMatrixP2X4Inact2factor();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=10^12*(g1*(p0(10)+p0(11)+p0(12)+p0(13))*(V-E1)+g2*(p0(14)+p0(15)+p0(16)+p0(17))*(V-E2));
	end
end