function b = checkParamsFourP2X7SS()
	global R L1 L2 k3 k5 k6 g12 E12;
	b=1;
	if R<0 || L1<0 || L2<0 || k3<0 || k5<0 || k6<0 || g12<0 || E12<0
		b=0;
		return
	end
end