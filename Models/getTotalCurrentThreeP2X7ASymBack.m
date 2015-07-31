function I = getTotalCurrentThreeP2X7ASymBack(Y,V)
global a b rb g12 E12;
	I = 10^12*g12*Y(:,1).*(V-E12);
end