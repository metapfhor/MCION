function I = getTotalCurrentFourP2X7(Y,V)
global a1 a2 a3 b1 b2 b3 g12 E12;
	I = 10^12*g12*(Y(:,3)+Y(:,4)).*(V-E12);
end