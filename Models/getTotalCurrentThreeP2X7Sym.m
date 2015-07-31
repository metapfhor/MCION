function I = getTotalCurrentThreeP2X7Sym(Y,V)
global a b g12 E12;
	I = 10^12*g12*Y(:,1).*(V-E12);
end