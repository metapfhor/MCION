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


stateNames=['B','C','D','E','S']
paramNames=['q1','q2','q3','K2','q5','K3','vout','Kout'];
paramNames=['q1','q2','q3','q4','q5','q6','vout'];
m=new model('slowSpike');


//m.addAuxiliary({vin:'vout/Kout',q6:'K3*q5',q4:'K2*q3'})

m.addState(stateNames);
m.addParam(paramNames);

makeGlobal(m.states) 



opened=plus(D,E);
fopened='V';
Iopened=times(opened,fopened)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated="0";

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.linkStates(B,C,'q2*A','q1');
m.linkStates(C,D,'q4*A','q3');
m.linkStates(D,E,'q6*A','q5');
m.linkStates(E,S,'vout')

createBaseFiles(m);

