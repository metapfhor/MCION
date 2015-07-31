function p =  paramsPvalue(X,k1,k2)
global iparam

x1=X(iparam(k1),:);
x2=X(iparam(k2),:);

p=signrank(x1,x2);
N=length(x1);
p=ranksum(unique(x1),unique(x2));
cf(1);plot(x1,x2,'o');
xlabel(k1);
ylabel(k2);
end