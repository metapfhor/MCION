function expp = linearInterp(exp,t0,tf,n)
    expp=exp;
    T=exp.data(:,1);
    I=exp.data(:,2);
    Tref=T(T>=t0&T<=tf);
    Iref=I(T>=t0&T<=tf);
    
    Nref=length(Tref);
    Tnew=zeros((Nref-1)*n+Nref,1);
    Inew=zeros((Nref-1)*n+Nref,1);
    
    for i=1:Nref-1
        Tnew((i-1)*n+1:i*n+2)=linspace(Tref(i),Tref(i+1),n+2);
        Inew((i-1)*n+1:i*n+2)=linspace(Iref(i),Iref(i+1),n+2);
    end
end

