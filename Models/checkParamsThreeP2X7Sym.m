function bool = checkParamsThreeP2X7Sym()
	global a b g12 E12;
	bool=1;
	if a<0 || b<0 || g12<0 || E12<0
		bool=0;
		return
	end
end