function bool = checkParamsThreeP2X7()
	global a1 a2 b1 b2;
	bool=1;
	if a1<0 || a2<0 || b1<0 || b2<0
		bool=0;
		return
	end
end