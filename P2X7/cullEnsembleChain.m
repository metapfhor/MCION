function c = cullEnsembleChain(a,sse,thresh)
L=size(sse,2);
Npar=size(a,1);
N=size(a,3);
b=cell(N,L);
Nb=cell(N,L);
Nbtot=0;
if length(thresh)==1
    sse=squeeze(sum(sse,2));
end
for i = 1:N

    for j=1:L
        if length(thresh)==1
            b{i,j}=squeeze(a(:,j,i,sse(j,:)<=thresh));
        else
            b{i,j}=squeeze(a(:,j,i,sse(j,i,:)<=thresh(i)));
        end
        Nb{i,j}=size(b{i,j},2);
        Nbtot=Nbtot+Nb{i,j};
    end
end
c=zeros(Npar,Nbtot);
beg=1;

for i=1:N
    for j=1:L
        c(:,beg:beg+Nb{i,j}-1)=b{i,j};
        beg=beg+Nb{i,j};
    end
end

end

