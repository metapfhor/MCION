function b = checkParamsThreeP2X7SS()
	global R k3 g12 E12;
	b=1;
	if R<0 || k3<0 || g12<0 || E12<0
		b=0;
		return
	end
end