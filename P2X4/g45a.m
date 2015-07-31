samp=4;

Tg45a=T(1:samp:end);
Ig45a=I(1:samp:end);

ton=[13,130,198.6,316.4,434.6,554.8,672.6,790.6,908.6,1025,1300];
toff=ton+4;
cond={ton,toff,1400};

glbl=struct();
glbl.A=1E-6;
glbl.J=0.3e-6;
glbl.IVMon=140;
glbl.IVMoff=toff(5);

pulse03IVMG45A=struct();
pulse03IVMG45A.data=[Tg45a,Ig45a];
pulse03IVMG45A.conditions=cond;
pulse03IVMG45A.globals=glbl;
pulse03IVMG45A.response='naivePerfusionResponsePulse';

cf(62);plotNaiveResponse(pulse03IVMG45A,P2X4Inact2factor);


return;

save('../../Experiments/pulse03IVMG45A.mat','pulse03IVMG45A');

cf(44);plot(Tg45a,Ig45a)

