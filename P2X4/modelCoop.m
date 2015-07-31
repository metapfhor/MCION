function h = modelIntern(model)

    function b=coop(x)
        global alpha beta gamma
    model.setParams(x)
    
    if alpha<=beta && beta<=gamma
        b=1;
    else
        b=0;
    end
    
    end


h=@coop;
end

