function chainPrestimDoseResponse(X,model,nx)
global Icontrol I10 I30 parami

I0pred=zeros(7,nx);
I1Opred=zeros(7,nx);
I3Opred=zeros(7,nx);

samplers=chainPDFSampler(X);
npar=size(X,1);
x=zeros(npar,1);
for i=1:nx
     for i=1:npar;
            k=parami(['' num2str(i) '']);
            x(i)=feval(samplers.(k));

    end
    model.setParams(x);
    [A,I0pred(:,i)]=prestimDoseResponse(0,model);
    [A,I10pred(:,i)]=prestimDoseResponse(10,model);
    [A,I30pred(:,i)]=prestimDoseResponse(30,model);
%     disp(num2str(i));
end
% cf(2);plot(A.',[I0]);
% save(['prestimResponse_' num2str(nx) '.mat'],'A','I0','I10','I30');


% h = errorbar(A.',[mean(I0,2),mean(I10,2),mean(I30,2)],[var(I0,1,2),var(I10,1,2),var(I30,1,2)]);
hold on
h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)/nx));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0])
rescon=real(ec50(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k');

h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)/nx),'-g');
set(h,'LineStyle','none','Marker','o','Color',[0,1,0])
res10=real(ec50(A./1e-6,mean(I10pred,2)));
h10=plot(A./1e-6,sigmoid(res10,A./1e-6),'-g');

h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)/nx),'-r');
set(h,'LineStyle','none','Marker','o','Color',[1,0,0])
res30=real(ec50(A./1e-6,mean(I30pred,2)));
h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r');

plot(A./1e-6,Icontrol,':k');
plot(A([1,2,3,4,5,7])./1e-6,I10,':g');
plot(A([1,2,3,4,6,7])./1e-6,I30,':r');
set(gca,'FontSize',18)
title('Prestimulation Dose Response');
ylabel('Current (pA)')
xlabel('ATP uM')

hleg=legend([hcon,h10,h30],['Control: EC50= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['10s: EC50= ' num2str(res10(3)) ', n=' num2str(res10(4))],['30s, EC50= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','NorthEastOutside');
set(hleg,'FontSize',12)

xlim([0.1,100])

hold off




set(get(h,'Parent'), 'XScale', 'log')

end

