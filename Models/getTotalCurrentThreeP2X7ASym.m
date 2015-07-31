function I = getTotalCurrentThreeP2X7ASym(Y,V)
global a b ra rb g12 E12;
	I = 10^12*g12*Y(:,1).*(V-E12);
end