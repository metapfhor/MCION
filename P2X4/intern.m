function b = intern(x)
    global H3 H2

    setParamsfactorP2X4(x)
    
    if H3<H2
        b=1;
    else
        b=0;
    end

end