global exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca Acell

exp3ca.conditions={5,125,245};
exp3ca.globals=struct('ATP',0.2*10^-6,'A',0.2*10^-6,'V',-60*10^-3,'C',2*10^-3);
exp10ca.conditions={5,125,245};
exp10ca.globals=struct('ATP',0.5*10^-6,'A',0.5*10^-6,'V',-60*10^-3,'C',2*10^-3);
exp32ca.conditions={5,47,120};
exp32ca.globals=struct('ATP',1.6*10^-6,'A',1.6*10^-6,'V',-60*10^-3,'C',2*10^-3);
exp100ca.conditions={5,47,120};
exp100ca.globals=struct('ATP',5*10^-6,'A',5*10^-6,'V',-60*10^-3,'C',2*10^-3);
exp320ca.conditions={5,47,80};
exp320ca.globals=struct('ATP',18*10^-6,'A',18*10^-6,'V',-60*10^-3,'C',2*10^-3);

exp1.conditions={5,125,245};
exp1.globals=struct('ATP',0.1*10^-6,'A',0.1*10^-6,'V',-60*10^-3,'C',0);
exp3.conditions={5,125,245};
exp3.globals=struct('ATP',0.3*10^-6,'A',0.3*10^-6,'V',-60*10^-3,'C',0);
exp10.conditions={5,66,120};
exp10.globals=struct('ATP',1*10^-6,'A',1*10^-6,'V',-60*10^-3,'C',0);
exp32.conditions={5,46,120};
exp32.globals=struct('ATP',3*10^-6,'A',3*10^-6,'V',-60*10^-3,'C',0);
exp100.conditions={5,46,120};
exp100.globals=struct('ATP',10*10^-6,'A',10*10^-6,'V',-60*10^-3,'C',0);

Npad=8;

%calcium deficient

t=(0:5:245).';
tauact=65;
taude=32.4;
rec1=zeros(length(t),1);
rec1(t>5&t<=125)=-5.9*(1-exp(-(t(t>5&t<=125)-5)/tauact));
rec1(t>125)=-rec1(t==125)*(1-exp(-(t(t>125)-125)/taude))+rec1(t==125);
exp1.data=[t,rec1];

t=(0:5:125).';
tauact=29.189;
rec3=zeros(length(t),1);
rec3(t>5&t<=125)=-36.5*(1-exp(-(t(t>5&t<=125)-5)/tauact));
exp3.data=[t,rec3];

dt=1;
t=(dt:dt:60);

taude=6;
ttot=[0,5:0.5:6,t+6,t+66];
rec10=zeros(length(ttot),1);
rec10(ttot>=5&ttot<=6)=linspace(0,-720,length(rec10(ttot>=5&ttot<=6)));
rec10(ttot>6&ttot<=66)=250*(1-exp(-t/4))-2200*(1-exp(-t/80))-720;
rec10(ttot>66)=rec10(ttot==66)*(exp(-t/taude))
exp10.data=[ttot.',rec10];


t=[0,5,6,45].';
rec32=[0,0,-2625,-3325].';

dt=1;
t=(dt:dt:40);
taude=6;
ttot=[0,5:0.1:6,t+6,t+46];
rec32=zeros(length(ttot),1);
rec32(ttot>=5&ttot<=6)=linspace(0,-2625,length(rec32(ttot>=5&ttot<=6)));
rec32(ttot>6&ttot<=46)=670*(1-exp(-t/2))-1400*(1-exp(-t/6))-2625;
rec32(ttot>46)=rec32(ttot==46)*(exp(-t/taude));
exp32.data=[ttot.',rec32];

t=[0,5,6,45].';
rec100=[0,0,-3400,-3900].';

dt=1;
t=(0:dt:40);
rec100=zeros(2*length(t)+2,1);
taude=6;
ttot=[0,5,t+6,t+46+dt];
rec100(ttot>=6&ttot<=46)=80*(1-exp(-t))-800*(1-exp(-t/8))-3400;
rec100(ttot>46)=rec100(ttot==46)*(exp(-t/taude));

exp100.data=[ttot.',rec100];

%%with calcium


t=(0:5:245).';
tauact=32.4;
taude=51.89;
rec3ca=zeros(length(t),1);
rec3ca(t>5&t<=125)=-15.6*(1-exp(-(t(t>5&t<=125)-5)/tauact));
rec3ca(t>125)=-rec3ca(t==125)*(1-exp(-(t(t>125)-125)/taude))+rec3ca(t==125);
exp3ca.data=[t,rec3ca];

t=(0:5:245).';
tauact=18.16;
taude=32.4;
rec10ca=zeros(length(t),1);
rec10ca(t>5&t<=125)=-40.5*(1-exp(-(t(t>5&t<=125)-5)/tauact));
rec10ca(t>125)=-rec10ca(t==125)*(1-exp(-(t(t>125)-125)/taude))+rec10ca(t==125);
exp10ca.data=[t,rec10ca];



t=[0,5,6,45].';
rec32ca=[0,0,-782,-1607].';

dt=1;
t=(0:dt:40);
rec32ca=zeros(2*length(t)+2,1);
taude=4;
ttot=[0,5,t+6,t+46+dt];
rec32ca(ttot>=6&ttot<=46)=300*(1-exp(-t/4))-2850*(1-exp(-t/80))-782;
rec32ca(ttot>46)=rec32ca(ttot==46)*(exp(-t/taude));




exp32ca.data=[ttot.',rec32ca];


t=[0,5,6,45].';
rec100ca=[0,0,-1725,-2925].';

dt=1;
t=(0:dt:40);
rec100ca=zeros(2*length(t)+2,1);
taude=4;
ttot=[0,5,t+6,t+46+dt];
rec100ca(ttot>=6&ttot<=46)=800*(1-exp(-t/2))-1870*(1-exp(-t/6))-1725;
rec100ca(ttot>46)=rec100ca(ttot==46)*(exp(-t/taude));
exp100ca.data=[ttot.',rec100ca];

%exp100ca.data=linearPad([t,rec100ca],Npad);

t=[0,5,6,45].';
rec320ca=[0,0,-3150,-3797].';

dt=1;
t=(0:dt:40);
rec320ca=zeros(2*length(t)+2,1);
taude=4;
ttot=[0,5,t+6,t+46+dt];
rec320ca(ttot>=6&ttot<=46)=200*(1-exp(-t))-800*(1-exp(-t/8))-3150;
rec320ca(ttot>46)=rec320ca(ttot==46)*(exp(-t/taude));

exp320ca.data=[ttot.',rec320ca];

%exp320ca.data=linearPad([t,rec320ca],Npad);

Acell=1;

cf(1);plotPanels(calP2X7);