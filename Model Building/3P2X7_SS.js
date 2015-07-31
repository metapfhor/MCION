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


stateNames=['O1']
paramNames=['k1','k2','k3','k4','k5','k6','g12','E12'];
m=new model('ThreeP2X7SS');


m.addState(stateNames);
m.addParam(paramNames);
m.addKineticParam(paramNames.slice(0,8))


makeGlobal(m.states) 

open0='3*k2*A';
close1='k1';
c2ss=divide(1,plus(1,divide(close1,open0)));

open1='2*k4*A';
close2='2*k3';

O1.addProductionTerm(times(open1,c2ss),0);
O1.addDegradationTerm(close2,1);


opened=O1;
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated="0";

createBaseFiles(m);

