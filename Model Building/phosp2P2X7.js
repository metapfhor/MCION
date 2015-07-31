modelling=require('./model.js');

testing=require('./modelTesting.js');

fs=require('fs')

function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(modelling);
makeGlobal(testing);


//stateNames=['C1','C2','C3','C4','O1','O2','O3','O4','D1','D2','D3','D4']
stateNames=['C1','C2','C3','C4','C5','C6','O1','O2','O3','O4','O5','O6','S1','S2','S3','S4']
paramNames=['k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','L1','L2','L3','L5','L6','H1','H2','H3','H4','H5','H6','H7','g0','g1','gd','E12','E34','A','V','n'];
m=new model('phosph2P2X7');


m.addState(stateNames);
m.addParam(paramNames);




makeGlobal(m.states) 

open0='3*k2*A';
close1='k1';

open1='2*k4*A';
close2='2*k3';

open2='k6*A';
close3='3*k5';

open='k8*A';
close='k7'



dilated=plus(S3,S4);
fdilated=minus('V','E34');
Idilated=times('gd',dilated,fdilated)

opened0=plus(O1,O2);
opened1=plus(O3,O4);
opened2=plus(O5,O6);
openedCond=plus(times('g0',opened0),times('gd',opened1),times('gd',opened2));
fopened=minus('V','E12');
Iopened=times(openedCond,fopened);

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=plus(O1,O2,O3,O4);
m.dilated=dilated;


m.addAuxiliary({K1:'3*k2/k1',K2:'k4/k3',K3:'k6/(3*k5)'})

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.linkStates(C1,C2,open0,close1);
m.linkStates(C2,O1,open1,close2);
m.linkStates(O1,O2,open2,close3);

//top row
//m.linkStates(D1,D2,open0,close1);
//m.linkStates(D2,D3,open1,close2);
//m.linkStates(D3,D4,open2,close3);

//1-phosporylation row
m.linkStates(C3,C4,open0,close1);
m.linkStates(C4,O3,open1,close2);
m.linkStates(O3,O4,open2,close3);

//2-phosporylation row
m.linkStates(C5,C6,open0,close1);
m.linkStates(C6,O5,open1,close2);
m.linkStates(O5,O6,open2,close3);


//sensitized row
m.linkStates(S1,S2,'3*k12*A','k11');
m.linkStates(S2,S3,'2*k10*A','2*k9');
m.linkStates(S3,S4,'k8*A','3*k7');


///////////////////////
//Vertical Links
//////////////////////

//middle to lower row
m.linkStates(S1,C1,'L1');//back to naive state
m.linkStates(O2,O4,'3*L3','L2');//phosphorylation pathway (1)
m.linkStates(O4,O6,'2*L3','2*L2');//phosphorylation pathway (2)
m.linkStates(O6,S4,'L5','L6');//sensitization pathway

//middle to upper row
//m.linkStates(D1,C1,'H1');//back to naive state
//m.linkStates(D2,C2,'H7','H6');
//m.linkStates(D3,O1,'H5','H4');
//m.linkStates(D4,O2,'H3','H2');

m.watched=[O1,O2,O3,O4,O5,O6,S3,S4];

createBaseFiles(m);

