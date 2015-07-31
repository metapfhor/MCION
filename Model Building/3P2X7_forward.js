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


stateNames=['C1','C2','O1']
paramNames=['k2','k4','g12','E12'];
m=new model('ThreeP2X7Forward');


m.addState(stateNames);
m.addParam(paramNames);
m.addKineticParam(paramNames.slice(0,4))


makeGlobal(m.states) 

open0='3*k2*A';
close1='k1';

open1='2*k4*A';
close2='2*k3';


opened=O1;
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated="0";

///////////////////////
//Horizontal Links
///////////////////////

//middle row
linkStates(C1,C2,open0);
linkStates(C2,O1,open1);


createBaseFiles(m);

