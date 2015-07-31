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


stateNames=['C1','C2','C3','C4','O1','O2','O3','O4','D1','D2','D3','D4']
paramNames=['k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','A','V','EC','n'];
m=new model('compP2X7');


m.addState(stateNames);
m.addParam(paramNames);
m.addAuxiliary({k1eff:'(k1*A^n)/(EC^n+A^n)',k2eff:'(k2*A^n)/(EC^n+A^n)',k3eff:'(k3*A^n)/(EC^n+A^n)',k4eff:'(k4*A^n)/(EC^n+A^n)',k5eff:'(k5*A^n)/(EC^n+A^n)',k6eff:'(k6*A^n)/(EC^n+A^n)'})

makeGlobal(m.states) 

open0='3*k2eff*A';
close1='k1eff';

open1='2*k4eff*A';
close2='2*k3eff';

open2='k6eff*A';
close3='3*k5eff';

open='k2eff*A';

opened=plus(O1,O2);
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

dilated=plus(O3,O4);
fdilated=minus('V','E34');
Idilated=times('g34',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;

m.naive='C1'

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.linkStates(C1,C2,open0,close1);
m.linkStates(C2,O1,open1,close2);
m.linkStates(O1,O2,open2,close3);

//top row
m.linkStates(D1,D2,open0,close1);
m.linkStates(D2,D3,open1,close2);
m.linkStates(D3,D4,open2,close3);

//bottom row
m.linkStates(C4,C3,'3*'+open,close1);
m.linkStates(C3,O4,'2*'+open,'2*'+close1);
m.linkStates(O4,O3,open,'3*'+close1);

///////////////////////
//Vertical Links
//////////////////////

//middle to lower row
m.linkStates(C4,C1,'L1');//back to naive state
m.linkStates(O2,O3,'L3','L2');//dilation pathway

//middle to upper row
m.linkStates(D1,C1,'H1');//back to naive state
m.linkStates(D2,C2,'H2','H3');
m.linkStates(D3,O1,'H4','H5');
m.linkStates(D4,O2,'H6','H7');

createBaseFiles(m);

