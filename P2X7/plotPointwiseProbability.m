function h=plotPointwiseProbability(t,m,v)
extent=-max((abs(m)+sqrt(v))*1.2);
nbin=10^3;
values=sort([(0:extent/(nbin-1):extent).';m]);
p=zeros(length(values),length(t));
v(v==0)=1;
for i=1:length(t)
    sse=((values-m(i)).^2)/(2*v(i));
    p(:,i)=exp(-sse);
end

h=pcolor(t,values,p);
    colormap('bone');
    shading interp;

end