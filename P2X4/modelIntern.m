function h = modelIntern(model)

    function b=intern(x)
        global H2 H3
    model.setParams(x)
    
    if H2>H3
        b=1;
    else
        b=0;
    end
    
    end


h=@intern;
end

