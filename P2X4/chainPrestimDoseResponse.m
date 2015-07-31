function chainPrestimDoseResponse(x,model)
global Icontrol I10 I30 globalStruct

A=[0.1,0.3,1,3,10,30,100].'*1e-6;

nx=size(x,2);
I0pred=zeros(7,nx);
I1Opred=zeros(7,nx);
I3Opred=zeros(7,nx);
gs=globalStruct;
setParams=@model.setParams;
for i=1:nx
%     setGlobalStruct(gs)
    setParams(x(:,i));
    [I0pred(:,i)]=prestimDoseResponse(0,model);
    [I10pred(:,i)]=prestimDoseResponse(10,model);
    [I30pred(:,i)]=prestimDoseResponse(30,model);
%     disp(num2str(i));
end
% cf(2);plot(A.',[I0]);
% save(['prestimResponse_' num2str(nx) '.mat'],'A','I0','I10','I30');


% h = errorbar(A.',[mean(I0,2),mean(I10,2),mean(I30,2)],[var(I0,1,2),var(I10,1,2),var(I30,1,2)]);
hold on
% h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)/nx));
h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0],'LineWidth',3)
rescon=real(ec50(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k','LineWidth',3);

% h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)/nx),'-g');
h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)),'-g');
set(h,'LineStyle','none','Marker','o','Color',[0,1,0],'LineWidth',3)
res10=real(ec50(A./1e-6,mean(I10pred,2)));
h10=plot(A./1e-6,sigmoid(res10,A./1e-6),'-g','LineWidth',3);

% h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)/nx),'-r');
h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
set(h,'LineStyle','none','Marker','o','Color',[1,0,0],'LineWidth',3)
res30=real(ec50(A./1e-6,mean(I30pred,2)));
h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r','LineWidth',3);

% plot(A./1e-6,Icontrol,':k');
% plot(A([1,2,3,4,5,7])./1e-6,I10,':g');
% plot(A([1,2,3,4,6,7])./1e-6,I30,':r');
set(gca,'FontSize',18)
title(['Prestimulation Dose Response (n=' num2str(nx)  ')']);
ylabel('Current (pA)')
xlabel('ATP uM')

hleg=legend([hcon,h10,h30],['Control: EC50= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['10s: EC50= ' num2str(res10(3)) ', n=' num2str(res10(4))],['30s, EC50= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','NorthEastOutside');
set(hleg,'FontSize',12)

xlim([0.1,100])

hold off




set(get(h,'Parent'), 'XScale', 'log')

end

