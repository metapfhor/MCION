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
    
    
cf(33);

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
subplot(1,2,1);
[e0,ef]=plotIVPanel(ramp,P2X4StackDeMix3);

% subplot(1,2,1);
ylim([-1000,500]);
xrev=x_to_norm(e0*1000,ef*1000);
ynot=y_to_norm(0,0);
pos=get(gca,'position');
pos=pos+[0.02 -0.06 0 0];
annotation('textbox',pos,'LineStyle','none','String',['\DeltaE_{rev} = ' num2str(1000*(ef-e0)) ' mV'],'FontSize',12);

annotation('arrow',[xrev(1),xrev(1)],[ynot(1)+0.05,ynot(1)])
annotation('arrow',[xrev(2),xrev(2)],[ynot(1)-0.05,ynot(1)])


annotation('textbox',[xrev(2),ynot(1)-0.05,0,0],'String',num2str(ef/1e-3))
annotation('textbox',[xrev(1),ynot(1)+0.05,0,0],'String',num2str(e0/1e-3),'HorizontalAlignment','right')

 line(xlim(),[0,0],'LineStyle',':');
 annotatePlot('A',20);
 
E2=-15.5e-3;
E1=-43e-3;

 subplot(1,2,2);
[e0,ef]=plotIVPanel(ramp,P2X4StackDeMix5);

ylim([-1000,500]);
xrev=x_to_norm(e0*1000,ef*1000);
ynot=y_to_norm(0,0);
pos=get(gca,'position');
pos=pos+[0.02 -0.06 0 0];
annotation('textbox',pos,'LineStyle','none','String',['\DeltaE_{rev} = ' num2str(1000*(ef-e0)) ' mV'],'FontSize',12);

annotation('arrow',[xrev(1),xrev(1)],[ynot(1)+0.05,ynot(1)])
annotation('arrow',[xrev(2),xrev(2)],[ynot(1)-0.05,ynot(1)])


annotation('textbox',[xrev(2),ynot(1)-0.05,0,0],'String',num2str(ef/1e-3))
annotation('textbox',[xrev(1),ynot(1)+0.05,0,0],'String',num2str(e0/1e-3),'HorizontalAlignment','right')

 line(xlim(),[0,0],'LineStyle',':');
  annotatePlot('B',20);
 E1=0;
 E2=0;
 