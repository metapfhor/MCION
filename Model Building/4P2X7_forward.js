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


stateNames=['C1','C2','O1','O2']
paramNames=['k2','k4','k6','g12','E12'];
m=new model('FourP2X7Forward');


m.addState(stateNames);
m.addParam(paramNames);
m.addKineticParam(paramNames.slice(0,5))


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
linkStates(O1,O2,open2);


createBaseFiles(m);

