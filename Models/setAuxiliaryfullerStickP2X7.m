function setAuxiliaryfullerStickP2X7(x)
	global k1 K1 k3 K2 k5 K3 k7 Ks3 k9 Ks2 k11 Ks1 L1 Kd L3 L4 L5 Ks H1 Kds H7 g12 g34 E12 E34 A V alpha1 alpha3 alpha32 alpha100 alpha k2 k4 k6 L2 L6 k8 k10 k12 H6;alpha=unitDefaultMap(A==[1e-7,3e-7,3e-6,1e-5],[alpha1,alpha3,alpha32,alpha100]);
	k2=alpha*K1*k1;
	k4=alpha*K2*k3;
	k6=alpha*K3*k5;
	L2=L3/Kd;
	L6=L5/Ks;
	k8=Ks3*k7;
	k10=Ks2*k9;
	k12=Ks1*k11;
	H6=H7/Kds;
	
end