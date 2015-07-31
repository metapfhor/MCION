function prestimDoseResponses(model,foo)
    function y=hill(Imax,EC,n,x)
        y=Imax*(x.^n./(x.^n+EC^n));
    end

A=[0.1,0.3,1,3,10,30,100]*1e-6;

Icontrol=hill(3.23e+3,1.6e-6,1.3,A);
I30=hill(4.18e+3,0.2e-6,1.3,A);

    model.setParams([]);

    A=[0.1,0.3,1,3,10,30,100].'*1e-6;
    [I0pred]=prestimDoseResponseG45A(0,model);
    [I30pred]=prestimDoseResponseG45A(30,model);




hold on

h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0],'MarkerSize',10)
rescon=real(ec502(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k','LineWidth',3);


h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
set(h,'LineStyle','none','Marker','o','Color',[1,0,0],'MarkerSize',10)
res30=real(ec502(A./1e-6,mean(I30pred,2)));
h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r','LineWidth',3);

plot(A./1e-6,Icontrol,':k','LineWidth',2);
plot(A./1e-6,I30,':r','LineWidth',2);


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
ylabel('Current (pA)')
xlabel('ATP (\muM)')

hleg=legend([hcon,h30],['Control: EC_{50}= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['30s, EC_{50}= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','NorthWest');
set(hleg,'FontSize',12)

% xlim([0.1,100])
axis tight

hold off




set(get(h,'Parent'), 'XScale', 'log')

end

