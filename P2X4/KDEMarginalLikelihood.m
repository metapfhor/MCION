function Py = KDEMarginalLikelihood(X,sse)
Npar=size(X,1);
Nx=size(X,2);
f=zeros(Nx,Npar);

for i=1:Npar
    Xi=X(i,:);
    minX=min(Xi);
    maxX=max(Xi);
    f(:,i)=ksdensity(Xi,Xi);
%     sum(f(:,i));
end
A=zeros(Nx,1);
for i=1:Nx
    A(i)=-log(prod(f(i,:)));
%     postTot=postTot+exp(sse(i));
end
% post=exp(-(sse-min(sse)));
% post=post/sum(post);
minsse=min(sse);
logtot=log(sum(exp(-(sse-minsse))));
%Posterior Probability
P=zeros(Nx,1);
%Posterior Probability Density
U=zeros(Nx,1);
for i=1:Nx
U(i)=-(sse(i)-minsse)-logtot;
end
% U=-log(1+sum(sse));
% sum(exp(U))
Py=(sum(exp(U-A))/Nx)^-1;

end

