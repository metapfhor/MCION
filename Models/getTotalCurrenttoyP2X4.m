function I = getTotalCurrenttoyP2X4(Y,V)
global k1 k2 L1 L2 L3 L4 L5 L6 L7 L8 H1 H2 H3 H4 g12 g34 E12 E34;
	I = 10^12*(+g12*Y(:,4).*(-V-E12)+g34*(+Y(:,5)+Y(:,6)).*(-V-E34));
end