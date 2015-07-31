function I = getTotalCurrentFourP2X7SS(Y,V)
global R L1 L2 k3 k5 k6 g12 E12;
	I = 10^12*g12*(Y(:,1)+Y(:,2)).*(V-E12);
end