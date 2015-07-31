function plotPrestimDoseResponsePanel(model)
global Icontrol I10 I30

    I0pred=zeros(7,1);

    I3Opred=zeros(7,1);
    model.setParams([]);
    A=[0.1,0.3,1,3,10,30,100].'*1e-6;
    [I0pred(:,1)]=prestimDoseResponse(0,model);

    [I30pred(:,1)]=prestimDoseResponse(30,model);
%     disp(num2str(i));

% cf(2);plot(A.',[I0]);
% save(['prestimResponse_' num2str(nx) '.mat'],'A','I0','I10','I30');


% h = errorbar(A.',[mean(I0,2),mean(I10,2),mean(I30,2)],[var(I0,1,2),var(I10,1,2),var(I30,1,2)]);
hold on
h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0],'LineWidth',2,'MarkerSize',10)
rescon=real(ec502(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k');
set(hcon,'LineWidth',3);

h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
set(h,'LineStyle','none','Marker','o','Color',[1,0,0],'LineWidth',2,'MarkerSize',10)
res30=real(ec502(A./1e-6,mean(I30pred,2)));
h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r');
set(h30,'LineWidth',3);


h=plot(A./1e-6,Icontrol,':k');
set(h,'LineWidth',2);
h=plot(A([1,2,3,4,6,7])./1e-6,I30,':r');
set(h,'LineWidth',2);


set(gca,'FontSize',12)
% title('Prestimulation Dose Response');
ylabel('Current (pA)')
xlabel('ATP uM')

hleg=legend([hcon,h30],['Control: EC_{50}= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['3 \muM IVM, EC_{50}= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','SouthEast');
set(hleg,'FontSize',10)

xlim([0.1,100])

hold off




set(get(h,'Parent'), 'XScale', 'log')
set(get(h,'Parent'), 'XTick', [0.1 1 10 100]);
set(get(h,'Parent'), 'XTickLabel',{'0.1' '1' '10' '100'});
end

