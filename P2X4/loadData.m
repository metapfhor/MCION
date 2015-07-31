global P2X4stacksub potentP2X4pool potentP2X4poolindepfull potentP2X4poolindep P2X4sub Acell prol3IVM Icontrol I30 I10   pulse0IVM pulse03IVM pulse1IVM pulse3IVM pulse6IVM  pulse10IVM 
global pulse1IVMdel pulse3IVMdel pulse10IVMdel prol3IVMp prol2noIVM
global  pulse0IVMs pulse03IVMs pulse1IVMs pulse3IVMs pulse6IVMs  pulse10IVMs prol3IVMs prol2noIVMs
global taucurve semtaucurve Icurve semIcurve
global P2X4Inact2block1 P2X4Inact2block3 P2X4Inact2block10

Acell=1;

load('../../Models/P2X4sub.mat')
load('../../Models/P2X4.mat')

load('../../Models/P2X4free.mat')
load('../../Models/P2X4freeDe.mat')
load('../../Models/P2X4freeDefree.mat')
load('../../Models/P2X4free2.mat')

load('../../Models/P2X4BX430.mat')

load('../../Models/P2X4Stack3.mat')
load('../../Models/P2X4StackDeMix.mat')
load('../../Models/P2X4StackDeMix2.mat')
load('../../Models/P2X4StackDeMix3.mat')
load('../../Models/P2X4StackDeMix4.mat')
load('../../Models/P2X4StackDeMix5.mat')
load('../../Models/P2X4StackDeMix5alt.mat')
load('../../Models/P2X4StackDeMix6.mat')
load('../../Models/P2X4StackDeMix7.mat')

load('../../Models/P2X4Inact2factor2.mat')
load('../../Models/P2X4Inact2factor.mat')
load('../../Models/P2X4Inact1factor.mat')
load('../../Models/P2X4Inact12.mat')
load('../../Models/P2X4Inact1.mat')
load('../../Models/P2X4Inact2.mat')
load('../../Models/P2XInact2.mat')
load('../../Models/P2XInact2noallo.mat')
load('../../Models/P2X4Inact2block1.mat')
load('../../Models/P2X4Inact2block3.mat')
load('../../Models/P2X4Inact2block10.mat')
load('../../Models/P2X4Inactsub.mat')
load('../../Models/anmarP2X4inact.mat')
load('../../Models/anmarP2X4inact2.mat')
load('../../Models/anmarP2X4tri.mat')

load('../../Models/P2X4Stack2.mat')
load('../../Models/P2X4Stack2sub.mat')
load('../../Models/P2X4Stack3sub.mat')
load('../../Models/P2X4StackEq.mat')

load('../../Models/P2X4stack.mat')
load('../../Models/P2X4stacksub.mat')

load('../../Models/omarP2X4.mat')
load('../../Models/omarP2X4coop.mat')
load('../../Models/omarP2X4cooppotent1.mat')

load('../../Models/factorP2X4.mat')
load('../../Models/factorP2X4del.mat')
load('../../Models/factorP2X4coop.mat')
load('../../Models/factorP2X4coopsub.mat')
load('../../Models/anmarP2X4.mat')
load('../../Models/anmarP2X4sense.mat')

load('../../Models/potentP2X4.mat')
load('../../Models/potent2P2X4.mat')
load('../../Models/potentP2X4sub.mat')

load('../../Models/potentP2X4dil.mat')

load('../../Models/potentP2X4two.mat')

load('../../Models/potentP2X4pool.mat')
load('../../Models/potentP2X4block2.mat')

load('../../Models/potentP2X4poolindep.mat')
load('../../Models/potentP2X4poolindepfull.mat')


load('../../Models/potentP2X4rev.mat')

load('../../Models/potentP2X4revcoop2.mat')

load('../../Models/potentP2X4coop.mat')
load('../../Models/potent1P2X4coop.mat')
load('../../Models/potentP2X4coop1.mat')
load('../../Models/potentP2X4coop2.mat')
load('../../Models/potentP2X4coop2back.mat')
load('../../Models/potentP2X4coop3.mat')
load('../../Models/potentP2X4cooprev.mat')

load('../../Models/ivmP2X4.mat')

load('../../Models/potent1P2X4indep.mat')
load('../../Models/potent2P2X4indep.mat')


load('../../Models/potent1P2X4rev.mat')
load('../../Models/potent1P2X4revcoop.mat')
load('../../Models/potent2P2X4rev.mat')
load('../../Models/potent2P2X4revcoop.mat')

load('../../Models/potent2P2X4sub.mat')

load('../../Experiments/prol2noIVM.mat')
load('../../Experiments/prol3IVM.mat')
load('../../Experiments/prol3IVMsmall.mat')
load('../../Experiments/prol33IVM.mat')
load('../../Experiments/prol3IVMp.mat')
load('../../Experiments/pulse0IVM.mat')
load('../../Experiments/pulse03IVMG45A.mat')
load('../../Experiments/pulse1IVMG45A.mat')
load('../../Experiments/pulse1IVM.mat')
load('../../Experiments/pulse3IVM.mat')
load('../../Experiments/pulse10IVM.mat')
load('../../Experiments/pulse10IVMadj.mat')

load('../../Experiments/Icontrol.mat')
Icontrol=abs(Icontrol);
load('../../Experiments/I10.mat')
load('../../Experiments/I30.mat')

pulse03IVM=pulse1IVM;
pulse03IVM.globals.J=3e-7;
pulse6IVM=pulse1IVM;
pulse6IVM.globals.J=6e-6;

pulse0IVMs=stripData(pulse0IVM);
pulse03IVMs=stripData(pulse03IVM);
pulse1IVMs=stripData(pulse1IVM);
pulse3IVMs=stripData(pulse3IVM);
pulse6IVMs=stripData(pulse6IVM);
pulse10IVMs=stripData(pulse10IVM);

prol2noIVMs=stripData(prol2noIVM);
prol3IVMs=stripData(prol3IVM);

P2X4.setAuxiliary=@setAuxiliaryP2X4;

omarP2X4.setAuxiliary=@setAuxiliaryP2X4;


taucurve=[0.19,0.19,1.8,12.1,16.7,16.9].';
%this is too much error...does not fit very strictly 
semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115].';
% semtaucurve=[0.0567,0.0567,0.1129,1.8645,1.5084,1.0115].';
% semtaucurve=sqrt(semtaucurve);
semtaucurve=taucurve*0.05;


Icurve=[293,611,2619,2754,2357,2222].';
%this is too much error...does not fit very strictly 
semIcurve=[56,87,793,587,643,730].';
semIcurve=Icurve*0.1;
semIcurve(3)=semIcurve(3)/4;


% tpre=30;
% 
% cond=[prol3IVM.conditions{:}];
% ton0=cond(1);
% cond=cond+tpre-cond(1);
% 
% prol3IVM.conditions{1}=cond(1);
% prol3IVM.conditions{2}=cond(2);
% prol3IVM.conditions{3}=cond(3);
% 
% t3=prol3IVM.data(:,1);
% i3=prol3IVM.data(:,2);
% prol3IVM.data=[[0;t3+tpre-ton0],[0;i3]];



% prol3IVM.data(:,2)=prol3IVM.data(:,2)/1.64;
% prol2noIVM.data(:,2)=prol2noIVM.data(:,2)/1.64;




ton=pulse10IVM.conditions{1};
pulse10IVMdel=pulse10IVM;
pulse10IVMdel.globals.IVMon=ton(3)-10;
pulse10IVMdel.globals.IVMoff=ton(3)+170;

ton=pulse3IVM.conditions{1};
pulse3IVMdel=pulse3IVM;
pulse3IVMdel.globals.IVMon=ton(3)-10;
pulse3IVMdel.globals.IVMoff=ton(3)+170;

ton=pulse1IVM.conditions{1};
pulse1IVMdel=pulse1IVM;
pulse1IVMdel.globals.IVMon=ton(3)-10;
pulse1IVMdel.globals.IVMoff=ton(3)+170;

% ton=prol3IVM.conditions{1};
% prol3IVM.globals.IVMon=ton-10;

