function plotGraphs(model)
global E1 E2 pulse1IVM pulse3IVM pulse10IVM T_2012_11_23_0004 I_2012_11_23_0004   T_2012_11_23_0015 I_2012_11_23_0015 cont


cont=4;
name=model.name;
dens='-r200';

ts=datestr(now,30);


cf(1);plotPulsePanels(model);

fig=gcf;
fig.PaperPosition = [0 0 12 8.5];
fig.PaperPositionMode = 'manual';
print([name '_pulses_panels_' ts '.tif'],'-dtiff',dens);


cf(2);plotProlPanels(model);

fig=gcf;
fig.PaperPosition = [0 0 12 8.5];
fig.PaperPositionMode = 'manual';
print([name '_prolonged_panels_' ts '.tif'],'-dtiff',dens);


cf(3);plotPulseDoseResponse(model);

fig=gcf;
fig.PaperPosition = [0 0 12 8.5];
fig.PaperPositionMode = 'manual';
print([name '_IVM_dose_panels_' ts '.tif'],'-dtiff',dens);


cf(4);prestimDoseResponses(model);

fig=gcf;
fig.PaperPosition = [0 0 12 8.5];
fig.PaperPositionMode = 'manual';
print([name '_pretreatment_dose_panels_' ts '.tif'],'-dtiff',dens);


E1=-51e-3;
E2=-21e-3;

cf(5);IVpanel(model);

fig=gcf;
fig.PaperPosition = [0 0 12 8.5];
fig.PaperPositionMode = 'manual';
print([name '_IV_with_IVM_panels_' ts '.tif'],'-dtiff',dens);

E1=0;
E2=0;



cf(6);

subplot(1,2,1);

plotPulseShort(pulse1IVM,model);
annotatePlot('A',16);



T=T_2012_11_23_0004;
I=I_2012_11_23_0004;
I=-623.4639*I/min(I(T<=30));
% 
resp={};
subplot(1,2,2);
hold on;

ton=[15.966
44.9595
76.942
107.9455
138.93
169.9395
200.945
231.9425
263.013];

toff=[17.8115
    46.8425
    78.781
    109.869
    140.8605
    171.855
    202.8675
    234.029];

hk=zeros(1,1);
plot([0 0],[0 0],'w-');
for i=1:1
    
    ind=T>=ton(i)&T<=ton(i)+cont;
    Tcurr=T(ind);
    Tcurr=Tcurr-Tcurr(1);
    Icurr=I(ind);
    Icurr=I(ind);
    Icurr=Icurr-Icurr(1);
    [Imax,ind]=max(abs(Icurr));
    tcrit004(i)=Tcurr(ind);
    ind=find(Icurr>=-Imax/2&Tcurr.'<Tcurr(ind));
    thalf004(i)=Tcurr(ind(end));
    Icurr=Icurr/Imax;
    plot(Tcurr,Icurr,'Color',[0 0 0],'LineWidth',3)
end
plot([0 0],[0 0],'w-');
colors = {[0 4.47e-01 7.41e-01],
    [8.5e-01 3.25e-01 9.8e-02],
    [9.2900e-01   6.9400e-01   1.2500e-01],
    [4.9400e-01   1.8400e-01   5.5600e-01],
    [4.6600e-01   6.7400e-01   1.8800e-01],
    [3.0100e-01   7.4500e-01   9.3300e-01]};

for i=3:7
    ind=T>=ton(i)&T<=ton(i)+cont;
    Tcurr=T(ind);
    Tcurr=Tcurr-Tcurr(1);
    Icurr=I(ind);
    Icurr=Icurr-Icurr(1);
    [Imax,ind]=max(abs(Icurr));
    tcrit004(i)=Tcurr(ind);
    ind=find(Icurr>=-Imax/2&Tcurr.'<Tcurr(ind));
    thalf004(i)=Tcurr(ind(end));
    Icurr=Icurr/Imax;
    plot(Tcurr,Icurr,'Color',colors{i-2},'LineWidth',3)
  
end

hleg=legend('','Pulse 1','','Pulse 1','Pulse 2','Pulse 3','Pulse 4','Pulse 5','Location','Best');


annotation('textbox','String','IVM Absent','LineStyle','none','FontSize',12)
annotation('textbox','String','1 \muM IVM Present','LineStyle','none','FontSize',12)

labelPlot('Time (s)','Normalized Current',14);
set(hleg,'FontSize',12);
annotatePlot('B',16);
axis tight

fig=gcf;

fig.PaperPositionMode = 'auto';
print([name '_short_kinetics_1uM_IVM_' ts '.tif'],'-dtiff','-r0');


cf(7);

subplot(1,2,1);

plotPulseShort(pulse10IVM,model);
annotatePlot('A',16);

T=T_2012_11_23_0015;
I=I_2012_11_23_0015;
I=-623.4639*I/min(I(T<=30));
% 
resp={};
subplot(1,2,2);
hold on;


ton=[2.0185
30.979
62.9555
93.9405
124.9585
155.9365
186.9355
];

toff=[17.8115
    46.8425
    78.781
    109.869
    140.8605
    171.855
    202.8675
    234.029];

hk=zeros(1,1);
plot([0 0],[0 0],'w-');
for i=1:1
    
    ind=T>=ton(i)&T<=ton(i)+cont;
    Tcurr=T(ind);
    Tcurr=Tcurr-Tcurr(1);
    Icurr=I(ind);
    Icurr=I(ind);
    Icurr=Icurr-Icurr(1);
    [Imax,ind]=max(abs(Icurr));
    tcrit004(i)=Tcurr(ind);
    ind=find(Icurr>=-Imax/2&Tcurr.'<Tcurr(ind));
    thalf004(i)=Tcurr(ind(end));
    Icurr=Icurr/Imax;
    plot(Tcurr,Icurr,'Color',[0 0 0],'LineWidth',3)
end
plot([0 0],[0 0],'w-');
colors = {[0 4.47e-01 7.41e-01],
    [8.5e-01 3.25e-01 9.8e-02],
    [9.2900e-01   6.9400e-01   1.2500e-01],
    [4.9400e-01   1.8400e-01   5.5600e-01],
    [4.6600e-01   6.7400e-01   1.8800e-01],
    [3.0100e-01   7.4500e-01   9.3300e-01]};

for i=3:7
    ind=T>=ton(i)&T<=ton(i)+cont;
    Tcurr=T(ind);
    Tcurr=Tcurr-Tcurr(1);
    Icurr=I(ind);
    Icurr=Icurr-Icurr(1);
    [Imax,ind]=max(abs(Icurr));
    tcrit004(i)=Tcurr(ind);
    ind=find(Icurr>=-Imax/2&Tcurr.'<Tcurr(ind));
    thalf004(i)=Tcurr(ind(end));
    Icurr=Icurr/Imax;
    plot(Tcurr,Icurr,'Color',colors{i-2},'LineWidth',3)
  
end

hleg=legend('','Pulse 1','','Pulse 1','Pulse 2','Pulse 3','Pulse 4','Pulse 5','Location','Best');


annotation('textbox','String','IVM Absent','LineStyle','none','FontSize',12)
annotation('textbox','String','10 \muM IVM Present','LineStyle','none','FontSize',12)

labelPlot('Time (s)','Normalized Current',14);
set(hleg,'FontSize',12);
annotatePlot('B',16);
axis tight

fig=gcf;

fig.PaperPositionMode = 'auto';
print([name '_short_kinetics_10uM_IVM_' ts '.tif'],'-dtiff','-r0');


end