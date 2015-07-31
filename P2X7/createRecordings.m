global exp1 exp3 exp10 exp32 exp100 exp3ca exp10ca exp32ca exp100ca exp320ca

exp3ca.conditions={5,125,245,0.2*10^-6};
exp10ca.conditions={5,125,245,0.5*10^-6};
exp32ca.conditions={5,45,120,1.6*10^-6};
exp100ca.conditions={5,45,120,5*10^-6};
exp320ca.conditions={5,45,80,18*10^-6};

exp1.conditions={5,125,245,0.1*10^-6};
exp3.conditions={5,125,245,0.3*10^-6};
exp10.conditions={5,65,120,1*10^-6};
exp32.conditions={5,45,120,3*10^-6};
exp100.conditions={5,45,120,10*10^-6};



%calcium deficient

t=(0:0.5:245).';
tauact=65;
taude=32.4;
rec1=zeros(length(t),1);
rec1(t>5&t<=125)=-5.9*(1-exp(-(t(t>5&t<=125)-5)/tauact));
rec1(t>125)=-rec1(t==125)*(1-exp(-(t(t>125)-125)/taude))+rec1(t==125);
exp1.data=[t,rec1];

t=(0:0.5:125).';
tauact=29.189;
rec3=zeros(length(t),1);
rec3(t>5&t<=125)=-36.5*(1-exp(-(t(t>5&t<=125)-5)/tauact));
exp3.data=[t,rec3];


t=[0,5,6,65].'
rec10=[0,0,-720,-1440].';
exp10.data=linearPad([t,rec10],10);


t=[0,5,6,45].';
rec32=[0,0,-2625,-3325].';
exp32.data=linearPad([t,rec32],10);

t=[0,5,6,45].';
rec100=[0,0,-3400,-3900].';
exp100.data=linearPad([t,rec100],10);


%%with calcium


t=(0:0.5:245).';
tauact=32.4;
taude=51.89;
rec3ca=zeros(length(t),1);
rec3ca(t>5&t<=125)=-15.6*(1-exp(-(t(t>5&t<=125)-5)/tauact));
rec3ca(t>125)=-rec3ca(t==125)*(1-exp(-(t(t>125)-125)/taude))+rec3ca(t==125);
exp3ca.data=[t,rec3ca];

t=(0:0.5:245).';
tauact=18.16;
taude=32.4;
rec10ca=zeros(length(t),1);
rec10ca(t>5&t<=125)=-40.5*(1-exp(-(t(t>5&t<=125)-5)/tauact));
rec10ca(t>125)=-rec10ca(t==125)*(1-exp(-(t(t>125)-125)/taude))+rec10ca(t==125);
exp10ca.data=[t,rec10ca];



t=[0,5,6,45].';
rec32ca=[0,0,-782,-1607].';
exp32ca.data=linearPad([t,rec32ca],10);

t=[0,5,6,45].';
rec100ca=[0,0,-1725,-2925].';
exp100ca.data=linearPad([t,rec100ca],10);

t=[0,5,6,45].';
rec320ca=[0,0,-3150,-3797].';
exp320ca.data=linearPad([t,rec320ca],10);

