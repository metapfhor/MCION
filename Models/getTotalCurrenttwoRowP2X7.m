function I = getTotalCurrenttwoRowP2X7(Y,V)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 g12 g34 E12 E34;
	I = 10^12*(g12*(Y(:,5)+Y(:,6)).*(V-E12)+g34*(Y(:,7)+Y(:,8)).*(V-E34));
end