function expp = linearPad(exp,t0,tf,n)
    expp=exp;
    T=exp.data(:,1);
    I=exp.data(:,2);
    
    Nt=length(T);
    
    Tref=T(T>=t0&T<=tf);
    Iref=I(T>=t0&T<=tf);
    
    Nref=length(Tref);
    Tlin=zeros((Nref-1)*n+Nref,1);
    Ilin=zeros((Nref-1)*n+Nref,1);
    
    for i=1:Nref-1
        Tlin(i*n+2-n+2:i*n+2)=linspace(Tref(i),Tref(i+1),n+2);
        Ilin(i*n+2-n+2:i*n+2)=linspace(Iref(i),Iref(i+1),n+2);
    end
    expp.data=zeros(Nt+(Nref-1)*n,2);
    expp.data(:,1)=[T(T<t0);Tlin;T(T>tf)];
    expp.data(:,2)=[I(T<t0);Ilin;I(T>tf)];
end

