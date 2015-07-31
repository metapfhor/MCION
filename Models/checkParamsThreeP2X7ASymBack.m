function bool = checkParamsThreeP2X7ASymBack()
	global a b rb g12;
	bool=1;
	if a<0 || b<0 || rb<0 || g12<0
		bool=0;
		return
	end
end