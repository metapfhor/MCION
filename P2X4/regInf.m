function [b0,b1,p,R] = regInf(x,y)
%preforms linear regression on data
%and infers statistical significance
%assumes x and y are vectors

n=length(x);

xbar=sum(x)/n;
ybar=sum(y)/n;
ssex=sum((x-xbar).^2);

b1=sum((x-xbar).*y)/ssex;
b0=ybar-b1*xbar;

yhat=b0+b1*x;
s=sqrt(sum((y-yhat).^2)/(n-2));
SE=s/sqrt(ssex);
T=b1/SE;
p=tpdf(T,n-2);
sx=sqrt(sum((x-xbar).^2)/n);
sy=sqrt(sum((y-ybar).^2)/n);
R=sum((x-xbar).*(y-ybar))/(n*sx*sy)

end

