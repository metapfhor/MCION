function bool = checkParamsFourP2X7()
	global a1 a2 a3 b1 b2;
	bool=1;
	if a1<0 || a2<0 || a3<0 || b1<0 || b2<0
		bool=0;
		return
	end
end