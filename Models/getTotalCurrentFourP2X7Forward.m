function I = getTotalCurrentFourP2X7Forward(Y,V)
global k2 k4 k6 g12 E12;
	I = 10^12*g12*(Y(:,3)+Y(:,4)).*(V-E12);
end