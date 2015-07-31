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
paramNames=['R','k3','g12','E12'];
//paramNames=['r1','r2','k3','g12','E12'];
//paramNames=['c','k3','g12','E12'];

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

//O1.solution="c.*(1-exp(-2*k3*t))";
O1.solution="R.*(1-exp(-2*k3*t))";

opened=O1;
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated="0";

createBaseFiles(m);

