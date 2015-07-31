function exp = naiveEvolution(xp,t)
    %returns a new experiment starting at the injection
    %lasting until time t
    ton=xp.conditions{1};
    if(nargin==1)
        t=xp.conditions{3}-ton;
    end
    exp=sliceExperiment(xp,ton,t+ton);

end

