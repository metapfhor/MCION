function  plotTargetComponents(lt,xxp,prior)
nx=size(lt,2);
% nx=15;
xtot=unravelChain(xxp);
x1=xtot(:,1:2:end-1);
x2=xtot(:,2:2:end);
lt1=lt(1,:);
lt2=lt(2,:);
lp1=zeros(1,nx);
ll1=zeros(1,nx);
lp2=zeros(1,nx);
ll2=zeros(1,nx);

for i=1:nx
    lp1(i)=prior(x1(:,i));

    lp2(i)=prior(x2(:,i));

end
    ll1=lt1-lp1;
    ll2=lt2-lp2;
    hold on;
        plot(1:nx,lp1,':r',1:nx,ll1,'-r',1:nx,lp2,':b',1:nx,ll2,'');
        
    hold off
end
