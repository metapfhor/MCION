ff=0.001;
fb=0.00001;
global pulse3IVM
global g1 g2 H2 L51 L52 L53 L54 L61 L62 L63 L64  L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 k7 k9 k11 k13 k17 k19 k15 k21 k23 L11 L12 L13 L14 k2 k4 k6 k1 k3 k5 k8 k10 k12 k14 k16 k18 k20 k22 k24 E1 E2 alpha1 alpha2 alpha3 beta1 beta2 beta3 H11 H12 H13 H14 ks1 ks2 ks3 ks4 kd1 kd2 kd3 kd4
global mu epsilon delta
% 
% load('twalk_P2X4StackDeMix5_var_1&3_IVM1600_steps@20150127T205243.mat')
% 
% P2X4StackDeMix5.setParams(x0);
% 

load('good_EC50_okay_kinetics_and_amplitudes_2.mat');
P2X4StackDeMix5.setParams([]);
     
K1=[L21/L11,L22/L12,L23/L13,L24/L14];
K2=[L41/L31,L42/L32,L43/L33,L44/L34];
K1>K2


    L31=L31*10000;

    L32=L32/100;
    L33=L33/100;
    L34=L34/100;
    
    L41=L41/1.6;
    L44=L44*2.5;
    L43=L43*2.5;

    k2=k2*(1.15+0.05*symrand());
    k4=k4*(1.15+0.05*symrand());
    k6=k6*(1.15+0.05*symrand());

    k8=k8/(2+0.02*symrand());
    k10=k10/(2+0.02*symrand());
    k12=k12/(2+0.02*symrand());
    
    k7=k7/(4+0.02*symrand());
    k9=k9/(4+0.02*symrand());
    k11=k11/(4+0.02*symrand());

    k13=k13/(2+0.02*symrand());
    k15=k15/(2+0.02*symrand());
    k17=k17/(2+0.02*symrand());

%     kd2=1/30;
    kd3=1/50;
    kd4=1/52;
    
     ks2=ks2/2;
    ks3=ks3/20;
%     ks4=ks4/2;
    
    g2=g2*1.7;
    g1=g1/2;
% 
% cf(22);
% 
% 
% 
% 
% I0pred=zeros(7,1);
% I1Opred=zeros(7,1);
% I3Opred=zeros(7,1);
% 
% 
%     A=[0.1,0.3,1,3,10,30,100].'*1e-6;
%     [I0pred]=prestimDoseResponse(0,P2X4StackDeMix5);
% %     [I10pred]=prestimDoseResponse(10,P2X4StackDeMix5);
%     [I30pred]=prestimDoseResponse(30,P2X4StackDeMix5);
% 
% 
% 
% 
% hold on
% h = errorbar(A./1e-6,mean(I0pred,2),sqrt(var(I0pred,1,2)));
% set(h,'LineStyle','none','Marker','o','Color',[0,0,0])
% rescon=real(ec502(A./1e-6,mean(I0pred,2)));
% hcon=plot(A./1e-6,sigmoid(rescon,A./1e-6),'-k');
% 
% % h = errorbar(A./1e-6,mean(I10pred,2),sqrt(var(I10pred,1,2)),'-g');
% % set(h,'LineStyle','none','Marker','o','Color',[0,1,0])
% % res10=real(ec502(A./1e-6,mean(I10pred,2)));
% % h10=plot(A./1e-6,sigmoid(res10,A./1e-6),'-g');
% 
% h = errorbar(A./1e-6,mean(I30pred,2),sqrt(var(I30pred,1,2)),'-r');
% set(h,'LineStyle','none','Marker','o','Color',[1,0,0])
% res30=real(ec502(A./1e-6,mean(I30pred,2)));
% h30=plot(A./1e-6,sigmoid(res30,A./1e-6),'-r');
% 
% plot(A./1e-6,Icontrol,':k');
% % plot(A([1,2,3,4,5,7])./1e-6,I10,':g');
% plot(A([1,2,3,4,6,7])./1e-6,I30,':r');
% set(gca,'FontSize',18)
% title([ num2str(rescon(3)/res30(3)) ' EC_{50} fold change & ' num2str(res30(2)/rescon(2)) ' I_{max} fold change' ]);
% ylabel('Current (pA)')
% xlabel('ATP uM')
% 
% hleg=legend([hcon,h30],['Control: EC50= ' num2str(rescon(3)) ', n=' num2str(rescon(4))],['30s, EC50= ' num2str(res30(3)) ', n=' num2str(res30(4))],'Location','NorthEastOutside');
% set(hleg,'FontSize',12)
% 
% xlim([0.1,100])
% 
% hold off
% 
% set(get(h,'Parent'), 'XScale', 'log')

E2=-15.5e-3;
E1=-43e-3;


ramp=struct();
ramp.conditions={10,20,20};
ramp.globals.A=100e-6;
ramp.globals.J=0;


ramp.conditions={20,30,30};
ramp.globals.J=3e-6;
ramp.globals.IVMon=0;
ramp.globals.IVMoff=40;
cf(5);[e0,ef]=plotIVCurve(ramp,P2X4StackDeMix5);

subplot(1,2,1);
ylim([-1000,500]);
xrev=x_to_norm(e0*1000,ef*1000);
ynot=y_to_norm(0,0);
title(['\DeltaE_{rev} = ' num2str(1000*(ef-e0)) ' mV']);

annotation('arrow',[xrev(1),xrev(1)],[ynot(1)+0.05,ynot(1)])
annotation('arrow',[xrev(2),xrev(2)],[ynot(1)-0.05,ynot(1)])


annotation('textbox',[xrev(2),ynot(1)-0.05,0,0],'String',num2str(ef/1e-3))
annotation('textbox',[xrev(1),ynot(1)+0.05,0,0],'String',num2str(e0/1e-3),'HorizontalAlignment','right')

 line(xlim(),[0,0],'LineStyle',':');
 
 E1=0;
 E2=0;
 
%  
% exp=pulse3IVM;
% 
% exp.globals.IVMoff=exp.conditions{3};
% setGlobals(exp.globals);
% toff=exp.conditions{2};
% ton=exp.conditions{1};
% ton(9)=ton(8)+100;
% toff(9)=ton(9)+2;
% 
% exp.conditions{1}=ton;
% exp.conditions{2}=toff;
% [T,I,Imax,Y]=lastIVMPulseIntegratorP2X4(exp.conditions{:},P2X4StackDeMix5);
% toff=exp.conditions{2};
% Ioff=I(T>toff(8));
% Toff=T(T>toff(8))-toff(8);
% 
% f=fit(Toff,Ioff,'exp1');
% figure(6);
% subplot(2,1,1);
% plot(f,Toff,Ioff);
% tauoff=coeffvalues(f);
% tauoff=-1/tauoff(2);
% title(['\tau_{off} = ' num2str(tauoff) ' s']);
% 
% subplot(2,1,2);
% plotWatchedStates(T,Y,P2X4StackDeMix5);
% axis tight;