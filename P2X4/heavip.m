function f=heavip(t)
    if t<0
        f=0;
    else
        f=1-exp(-t/0.025);
    end
end