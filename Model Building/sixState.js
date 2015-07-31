modelling=require('./model.js');

testing=require('./modelTesting.js');

fs=require('fs')

function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(modelling);
makeGlobal(testing)

stateNames=['C1','C2','C3','C4','C5','C6','Q1','Q2','Q3','Q4','Q5','Q6','D1','D2','D3','D4','Z'];
paramNames=['k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','L1','L2','L3','L4','H1','H2','H3','H4','g1','g2','E1','E2'];

m={};

m=new model('P2X4Fortran');

m.addState(stateNames);
m.addParam(paramNames);

makeGlobal(m.states)

open11=times('k2','A');
open12=times('k4','A');
open13=times('k6','A');
open21=times('k8','A');
open22=times('k10','A');
open23=times('k12','A');
open31=times('k14','A');
open32=times('k16','A');
open33=times('k18','A');

hill=divide('J',plus('J','delta'));
hill2=divide('J',plus('J','epsilon'));

dilate=times('L2',hill);
dilate2=times('L4',hill2);

m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');
m.linkStates(C3,C4,open21,'k7');
m.linkStates(C4,Q3,open22,'k9');
m.linkStates(Q3,Q4,open23,'k11');
m.linkStates(C5,C6,open31,'k13');
m.linkStates(C6,Q5,open32,'k15');
m.linkStates(Q5,Q6,open33,'k17');

m.linkStates(D1,D2,open11,'k1');
m.linkStates(D2,D3,open12,'k3');
m.linkStates(D3,D4,open13,'k5');

m.linkStates(C2,D2,'H2');
m.linkStates(Q1,D3,'H2');
m.linkStates(Q2,D4,'H2');

m.linkStates(C1,C3,dilate,'L1');
m.linkStates(C2,C4,dilate,'L1');
m.linkStates(Q1,Q3,dilate,'L1');
m.linkStates(Q2,Q4,dilate,'L1');

m.linkStates(D4,Z,'H3');

m.linkStates(C3,C5,dilate2,'L3');
m.linkStates(C4,C6,dilate2,'L3');
m.linkStates(Q3,Q5,dilate2,'L3');
m.linkStates(Q4,Q6,dilate2,'L3');

m.linkStates(D1,C1,'H1');
m.linkStates(Z,C1,'H4');


opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

dilated=plus(Q3,Q4,Q5,Q6);
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);

m.heaviside=['A','J'];

m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;







createBaseFiles(m);
