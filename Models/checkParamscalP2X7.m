function bool = checkParamscalP2X7()
	global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 r1 r2 kca koff;
	bool=1;
	if k1<0 || k2<0 || k3<0 || k4<0 || k5<0 || k6<0 || L1<0 || L2<0 || L3<0 || H1<0 || H2<0 || H3<0 || H4<0 || H5<0 || H6<0 || H7<0 || r1<0 || r2<0 || kca<0 || koff<0
		bool=0;
		return
	end
end