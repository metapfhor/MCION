function bool = checkParamsThreeP2X7ASym()
	global a b ra rb;
	bool=1;
	if a<0 || b<0 || ra<0 || rb<0
		bool=0;
		return
	end
end