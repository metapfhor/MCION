
n=8;
spacer=0.1;
x1=spacer+(1-2*spacer)*rand(n,1);
x2=spacer+(1-2*spacer)*rand(n,1);

labels=cell(n,1);
lt=zeros(n,1);
for i=1:n
    lt(i)=(2+rand)*10^6+100000*randn();
    labels{i} = [num2str(i) ', -logLikelihood=' num2str(lt(i)) ] ;
end

cf(43);plot(x1,x2,'.k','MarkerSize',30);
labelPlot('x_{1}','x_{2}',24);
xlim([0,1]);
ylim([0,1]);
set(gca,'XTicklabel','','YTicklabel','');

text(x1, x2+0.01, labels, 'VerticalAlignment','bottom','HorizontalAlignment','center','FontSize',16);

[x1_ordered,p1]=sort(x1);
[x2_ordered,p2]=sort(x2);

cf(44);
subplot(2,1,1);
plot(x1_ordered,lt(p1),'-k','LineWidth',2);
labelPlot('x_{1}','Error',24)
set(gca,'XTicklabel','');
subplot(2,1,2);
plot(x2_ordered,lt(p2),'-k','LineWidth',2);
labelPlot('x_{2}','Error',24)
set(gca,'XTicklabel','');

dx1=(x1_ordered(2:end)-x1_ordered(1:end-1));
centers1=(x1_ordered(2:end)+x1_ordered(1:end-1))/2;
normx1=(x1_ordered(end)-x1_ordered(1));
dx2=(x2_ordered(end)-x2_ordered(1))/n;

minlt=min(lt);
lt1=lt(p1);
lt1c=(lt1(1:end-1)+lt1(2:end))/2;
minlt=min(lt1c);
logtot1=log(sum(exp(-(lt1c-minlt))*normx1));
U1=zeros(n-1,1);

for i=1:n-1
U1(i)=-(lt1c(i)-minlt)-logtot1-log(dx1(i));
end
[A1,x1_smooth]=ksdensity(x1_ordered,'Support',[spacer,1-spacer]);
cf(45);plot(centers1,exp(U1),x1_smooth,A1);

