function b = checkParamsFourP2X7Forward()
	global k2 k4 k6 g12 E12;
	b=1;
	if k2<0 || k4<0 || k6<0 || g12<0 || E12<0
		b=0;
		return
	end
end