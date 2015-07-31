function prestimDoseResponses(model,foo)
global Icontrol I10 I30

I0pred=zeros(7,1);
I1Opred=zeros(7,1);
I3Opred=zeros(7,1);
    model.setParams([]);

    A=[0.1,0.3,1,3,10,30,100].'*1e-6;
    [I0pred]=prestimDoseResponse(0,model);
    [I10pred]=prestimDoseResponse(10,model);
    [I30pred]=prestimDoseResponse(30,model);




hold on

h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0])
rescon=real(ec502(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k');

h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)),'-g');
set(h,'LineStyle','none','Marker','o','Color',[0,1,0])
res10=real(ec502(A./1e-6,mean(I10pred,2)));
h10=plot(A./1e-6,sigmoid(res10,A./1e-6),'-g');

h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
set(h,'LineStyle','none','Marker','o','Color',[1,0,0])
res30=real(ec502(A./1e-6,mean(I30pred,2)));
h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r');

plot(A./1e-6,Icontrol,':k');
plot(A([1,2,3,4,5,7])./1e-6,I10,':g');
plot(A([1,2,3,4,6,7])./1e-6,I30,':r');


if nargin==2
    A=logspace(-7,-4,30);

    I1=dr1(A);
    I2=dr2(A);
    I3=dr3(A);
    I4=dr4(A);

    A=A/1e-6;
    plot(A,I1,A,I2,A,I3,A,I4);
end

set(gca,'FontSize',18)
title('Prestimulation Dose Response');
ylabel('Current (pA)')
xlabel('ATP uM')

hleg=legend([hcon,h10,h30],['Control: EC_{50}= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['10s: EC_{50}= ' num2str(res10(3)) ', n=' num2str(res10(4))],['30s, EC_{50}= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','NorthWest');
set(hleg,'FontSize',12)

% xlim([0.1,100])
axis tight

hold off




set(get(h,'Parent'), 'XScale', 'log')

end

