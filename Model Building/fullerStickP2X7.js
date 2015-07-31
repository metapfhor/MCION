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


stateNames=['C1','C2','O1','O2','O3','D1','D2','D3','D4','S1','S2','S3','S4']
paramNames=['k1','K1','k3','K2','k5','K3','k7','Ks3','k9','Ks2','k11','Ks1','L1','Kd','L3','L4','L5','Ks','H1','Kds','H7','g12','g34','E12','E34','A','V','alpha1','alpha3','alpha32','alpha100'];
m=new model('fullerStickP2X7');


m.addState(stateNames);
m.addParam(paramNames);

//m.addAuxiliary({k2:'K1*k1',k4:'K2*k3',k6:'K3*k5'});
m.addAuxiliary({alpha:'unitDefaultMap(A==[1e-7,3e-7,3e-6,1e-5],[alpha1,alpha3,alpha32,alpha100])',k2:'alpha*K1*k1',k4:'alpha*K2*k3',k6:'alpha*K3*k5',L2:'L3/Kd',L6:'L5/Ks',k8:'Ks3*k7',k10:'Ks2*k9',k12:'Ks1*k11',H6:'H7/Kds'});

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

dilated=plus(O3,S3,S4);
fdilated=minus('V','E34');
Idilated=times('g34',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;

m.watched=[O1,O2,O3,S3,S4,D4,D3];

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



//sensitized row
m.linkStates(S1,S2,'k12*A','k11');
m.linkStates(S2,S3,'k10*A','k9');
m.linkStates(S3,S4,'k8*A','k7')

///////////////////////
//Vertical Links
//////////////////////

//dilation

m.linkStates(O2,O3,'L3','L2');//dilation pathway

m.linkStates(O3,S4,'L5','L6');//sensitization pathway

//desenstization

m.linkStates(D4,O2,'H6','H7');

m.heaviside=['A'];

createBaseFiles(m);

