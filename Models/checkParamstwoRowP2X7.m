function bool = checkParamstwoRowP2X7()
	global k1 k2 k3 k4 k5 k6 L1 L2 L3 g12 g34 E12 E34;
	bool=1;
	if k1<0 || k2<0 || k3<0 || k4<0 || k5<0 || k6<0 || L1<0 || L2<0 || L3<0 || g12<0 || g34<0 || E12<0 || E34<0
		bool=0;
		return
	end
end