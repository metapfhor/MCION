function exp = sliceExperiment(xp,ti,tf)
    T=xp.data(:,1);
    if nargin==2
        tf=T(end);
    else
        [v,f]=min(abs(T-tf));
        tf=T(f);
    end
    [v,i]=min(abs(T-ti));
    ti=T(i);
    
    ind=(T>=ti&T<=tf);
    exp.data=xp.data(ind,:);
    exp.data(:,1)=exp.data(:,1)-ti;
    exp.conditions=xp.conditions;
    exp.conditions{1}=exp.conditions{1}-ti;
    exp.conditions{2}=exp.conditions{2}-ti;
    exp.conditions{3}=tf-ti;
end

