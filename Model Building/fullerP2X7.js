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


stateNames=['C1','C2','C3','C4','O1','O2','O3','O4','D1','D2','D3','D4','S1','S2','S3','S4']
paramNames=['k1','K1','k3','K2','k5','K3','k7','K5','k9','K6','k11','K7','k13','K9','k15','K10','k17','K11','L1','K4','L3','L4','L5','K8','H1','K12','H7','g12','g34','E12','E34','A','V'];
m=new model('fullerP2X7');


m.addState(stateNames);
m.addParam(paramNames);

m.addAuxiliary({k2:'K1*k1',k4:'K2*k3',k6:'K3*k5',L2:'L3/K4',k8:'K5*k7',k10:'K6*k9',k12:'K7*k11',L6:'L5/K8',k14:'K9*k13',k16:'K10*k15',k18:'K11*k17',H6:'H7/K12'});

makeGlobal(m.states) 

open0='k2*A';
close1='k1';

open1='k4*A';
close2='k3';

open2='k6*A';
close3='k5';



opened=plus(O1,O2);
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

dilated=plus(O3,O4,S3,S4);
fdilated=minus('V','E34');
Idilated=times('g34',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.linkStates(C1,C2,'k2*A','k1');
m.linkStates(C2,O1,'k4*A','k3');
m.linkStates(O1,O2,'k6*A','k5');

//desensitized row
m.linkStates(D1,D2,'k2*A','k1');
m.linkStates(D2,D3,'k4*A','k3');
m.linkStates(D3,D4,'k6*A','k5');

//dilated row
m.linkStates(C4,C3,'k12*A','k11');
m.linkStates(C3,O4,'k10*A','k9');
m.linkStates(O4,O3,'k8*A','k7');

//sensitized row
m.linkStates(S1,S2,'k18*A','k17');
m.linkStates(S2,S3,'k16*A','k15');
m.linkStates(S3,S4,'k14*A','k13')

///////////////////////
//Vertical Links
//////////////////////

//dilation
m.linkStates(C4,C1,'L1');//back to naive state
m.linkStates(O2,O3,'L3','L2');//dilation pathway

m.linkStates(S1,C4,'L4');//back to naive state
m.linkStates(O3,S4,'L5','L6');//sensitization pathway

//desenstization
m.linkStates(D1,C1,'H1');//back to naive state
m.linkStates(D4,O2,'H6','H7');

createBaseFiles(m);

