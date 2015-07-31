function I = getTotalCurrentThreeP2X7SS(Y,V)
global R k3 g12 E12;
	I = 10^12*g12*Y(:,1).*(V-E12);
end