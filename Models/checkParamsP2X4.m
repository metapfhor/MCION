function bool = checkParamsP2X4()
	global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3;
	bool=1;
	if k1<0 || k2<0 || k3<0 || k4<0 || k5<0 || k6<0 || L1<0 || L2<0 || L3<0
		bool=0;
		return
	end
end