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


stateNames=['C1','C2','C3','C4','O1','O2','O3','O4']
paramNames=['k1','k2','k3','k4','k5','k6','L1','L2','L3','g12','g34','E12','E34'];
m=new model('twoRowP2X7');


m.addState(stateNames);
m.addParam(paramNames);
m.addKineticParam(paramNames.slice(0,18))


makeGlobal(m.states) 

open0='3*k2*A';
close1='k1';

open1='2*k4*A';
close2='2*k3';

open2='k6*A';
close3='3*k5';

open='k2*A';

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

///////////////////////
//Horizontal Links
///////////////////////

//middle row
linkStates(C1,C2,open0,close1);
linkStates(C2,O1,open1,close2);
linkStates(O1,O2,open2,close3);


//bottom row
linkStates(C4,C3,'3*'+open,close1);
linkStates(C3,O4,'2*'+open,'2*'+close1);
linkStates(O4,O3,open,'3*'+close1);

///////////////////////
//Vertical Links
//////////////////////

//middle to lower row
linkStates(C4,C1,'L1');//back to naive state
linkStates(O2,O3,'L3','L2');//dilation pathway


createBaseFiles(m);
