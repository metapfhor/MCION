function v = unitDefaultMap(b,vals)
    if sum(b)==0
        v=1;
    else
        v=vals(b);
    end
end

