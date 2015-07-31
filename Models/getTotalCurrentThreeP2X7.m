function I = getTotalCurrentThreeP2X7(Y,V)
global a1 a2 b1 b2 g12 E12;
	I = 10^12*g12*Y(:,1).*(V-E12);
end