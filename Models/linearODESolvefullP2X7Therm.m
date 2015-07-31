function  linearODESolvefullP2X7Therm()
global K1 k1 K2 k3 K3 k5 Ks3 k7 Ks2 k9 Ks1 k11 L1 Ks L3 H1 H2 H3 H4 H5 Kds H7 g12 g34 E12 E34 A V alpha10 alpha1 alpha3 alpha32 alpha100 alpha k2 k4 k6 L2 k8 k10 k12 H6 p0 Acell Tsoln I Y imin imax t0 Q;
	%#codegen
	generatorMatrixfullP2X7Therm();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(g12*(p0(5)+p0(6))*(V-E12)+g34*(p0(7)+p0(8))*(V-E34));
	end
end