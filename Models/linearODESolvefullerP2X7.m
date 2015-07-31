function  linearODESolvefullerP2X7()
global k1 K1 k3 K2 k5 K3 k7 K5 k9 K6 k11 K7 k13 K9 k15 K10 k17 K11 L1 K4 L3 L4 L5 K8 H1 K12 H7 g12 g34 E12 E34 A V k2 k4 k6 L2 k8 k10 k12 L6 k14 k16 k18 H6 p0 Acell Tsoln I Y imin imax t0 Q;
	%#codegen
	generatorMatrixfullerP2X7();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(g12*(p0(5)+p0(6))*(V-E12)+g34*(p0(7)+p0(8)+p0(15)+p0(16))*(V-E34));
	end
end