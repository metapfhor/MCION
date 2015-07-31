function  linearODESolvecompP2X7()
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V EC n k1eff k2eff k3eff k4eff k5eff k6eff p0 Acell Tsoln I Y imin imax t0 Q;
	%#codegen
	generatorMatrixcompP2X7();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(g12*(p0(5)+p0(6))*(V-E12)+g34*(p0(7)+p0(8))*(V-E34));
	end
end