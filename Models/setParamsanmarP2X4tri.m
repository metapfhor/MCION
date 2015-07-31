function setParamsanmarP2X4tri(x)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 H6 H7 g1 g2 E1 E2 alpha beta gamma J V A n1 n2 Gmin Hmin rmin;

	k1=getParam('k1',x);
	k2=getParam('k2',x);
	k3=getParam('k3',x);
	k4=getParam('k4',x);
	k5=getParam('k5',x);
	k6=getParam('k6',x);
	L1=getParam('L1',x);
	L2=getParam('L2',x);
	L3=getParam('L3',x);
	H0=getParam('H0',x);
	H1=getParam('H1',x);
	H2=getParam('H2',x);
	H3=getParam('H3',x);
	H4=getParam('H4',x);
	H5=getParam('H5',x);
	H6=getParam('H6',x);
	H7=getParam('H7',x);
	g1=getParam('g1',x);
	g2=getParam('g2',x);
	E1=getParam('E1',x);
	E2=getParam('E2',x);
	alpha=getParam('alpha',x);
	beta=getParam('beta',x);
	gamma=getParam('gamma',x);
	J=getParam('J',x);
	V=getParam('V',x);
	A=getParam('A',x);
	n1=getParam('n1',x);
	n2=getParam('n2',x);
	Gmin=getParam('Gmin',x);
	Hmin=getParam('Hmin',x);
	rmin=getParam('rmin',x);
end