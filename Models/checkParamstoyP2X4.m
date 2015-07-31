function b = checkParamstoyP2X4()
	global k1 k2 L1 L2 L3 L4 L5 L6 L7 L8 H1 H2 H3 H4 g12;
	b=1;
	if k1<0 || k2<0 || L1<0 || L2<0 || L3<0 || L4<0 || L5<0 || L6<0 || L7<0 || L8<0 || H1<0 || H2<0 || H3<0 || H4<0 || g12<0
		b=0;
		return
	end
end