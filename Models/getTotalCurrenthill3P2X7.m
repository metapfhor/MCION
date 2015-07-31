function I = getTotalCurrenthill3P2X7(Y,V)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V EC1 EC2 EC3 n k1eff k2eff k3eff k4eff k5eff k6eff Acell;
	I = Acell*10^12*(g12*(Y(:,5)+Y(:,6)).*(V-E12)+g34*(Y(:,7)+Y(:,8)).*(V-E34));
end