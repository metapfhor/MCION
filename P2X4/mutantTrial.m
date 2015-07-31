ff=0.001;
fb=0.00001;

global g2 H2 L51 L52 L53 L54 L61 L62 L63 L64  L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 k7 k9 k11 k13 k17 k19 k15 k21 k23 L11 L12 L13 L14 k2 k4 k6 k1 k3 k5 k8 k10 k12 k14 k16 k18 k20 k22 k24 E1 E2

load('twalk_P2X4free_preStim_and_3_and_1uM1000_steps@20141202T145352.mat')

P2X4free.setParams(x0);
  


       L21=L21*(1.1+0.1*symrand());
        L22=L22*(1.2+0.15*symrand());
        L23=L23/(1.4+0.2*symrand());
        L24=L24/(1.4+0.2*symrand());
        
        L11=L11*(4.5+3.2*symrand());
        L12=L12*(6+4*symrand());
        L13=L13*(4.9+2.5*symrand());
        L14=L14*(4.9+2.5*symrand());
        
        L41=L41/(40+10*symrand());
        L42=L42/(40+10*symrand());;
        L43=L43/(40+10*symrand());;
        L44=L44/(40+10*symrand());;
        
        k7=(1.4+0.2*symrand())*k7;
        k9=(1.4+0.2*symrand())*k9;
        k11=(1.4+0.2*symrand())*k11;
        k15=(2+1*symrand())*k15;
        k17=(2+1*symrand())*k17;
        k19=(2+1*symrand())*k19;
        k21=(3+1.96*symrand())*k21;
        k23=(4+2.6*symrand())*k23;
        
        k8=(1.1+0.02*symrand())*k8;
        k10=(1.1+0.02*symrand())*k10;
        k12=(1.1+0.04*symrand())*k12;
        k14=(1.1+0.04*symrand())*k14;
        k16=(1.1+0.09*symrand())*k16;
        k18=(1.1+0.04*symrand())*k18;
        k22=(1.1+0.06*symrand())*k22;
        k24=(1.1+0.06*symrand())*k24;
        
        k1=(2+0.4*symrand())*k1;
        k3=(3+0.6*symrand())*k3;
        k5=(4+1.6*symrand())*k5;
        k2=(2+0.4*symrand())*k2;
        k4=(3+0.6*symrand())*k4;
        k6=(8+1.6*symrand())*k6;
        
        
cf(22);




I0pred=zeros(7,1);
I1Opred=zeros(7,1);
I3Opred=zeros(7,1);


    A=[0.1,0.3,1,3,10,30,100].'*1e-6;
    [I0pred]=prestimDoseResponse(0,P2X4free);
    [I10pred]=prestimDoseResponse(10,P2X4free);
    [I30pred]=prestimDoseResponse(30,P2X4free);




hold on
h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
set(h,'LineStyle','none','Marker','o','Color',[0,0,0])
rescon=real(ec50(A./1e-6,mean(I0pred,2)));
hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k');

h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)),'-g');
set(h,'LineStyle','none','Marker','o','Color',[0,1,0])
res10=real(ec50(A./1e-6,mean(I10pred,2)));
h10=plot(A./1e-6,sigmoid(res10,A./1e-6),'-g');

h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
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


E2=-9e-3;
E1=-80e-3;


ramp=struct();
ramp.conditions={10,20,20};
ramp.globals.A=100e-6;
ramp.globals.J=0;


ramp.conditions={30,40,40};
ramp.globals.J=3e-6;
ramp.globals.IVMon=0;
ramp.globals.IVMoff=40;
cf(5);[e0,ef]=plotIVCurve(ramp,P2X4free);

subplot(1,2,1);
ylim([-1000,500]);
xrev=x_to_norm(e0*1000,ef*1000);
ynot=y_to_norm(0,0);

annotation('arrow',[xrev(1),xrev(1)],[ynot(1)+0.05,ynot(1)])
annotation('arrow',[xrev(2),xrev(2)],[ynot(1)-0.05,ynot(1)])


annotation('textbox',[xrev(2),ynot(1)-0.05,0,0],'String',num2str(ef/1e-3))
annotation('textbox',[xrev(1),ynot(1)+0.05,0,0],'String',num2str(e0/1e-3),'HorizontalAlignment','right')

 line(xlim(),[0,0],'LineStyle',':')

