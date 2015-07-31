modelling=require('./model.js');

testing=require('./modelTesting.js');

fs=require('fs')

function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(modelling);
makeGlobal(testing)

stateNames=['C1','C2','Q1','Q2','D11','D12','Z'];
paramNames=['d1','d2','d3','d4','d5','d6','d7','d8','k1','k2','k3','k4','k5','k6','H11','H21','H3','H4','g1','g2','E1','E2','A','J','V'];


m=new model('P2X4stacksub');

m.addState(stateNames);
m.addParam(paramNames);

m.addAuxiliary();

makeGlobal(m.states)

open11=times('k2','A');
open12=times('k4','A');
open13=times('k6','A');




////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');




//Desensitized System
m.linkStates(D11,D12,'d2*A','d1');


////////////
//Vertical Links
///////////

//Desensitization of Naive Row
m.linkStates(C2,D12,'H21');
m.linkStates(Q1,D12,'H21');
m.linkStates(Q2,D12,'H21');




//Internalization 
m.linkStates(D12,Z,'H3');


//Return to Sensitized
m.linkStates(D11,C1,'H11');

//Externalization
m.linkStates(Z,C1,'H4');


//opened=plus(Q1,Q2,times(plus(Q3,Q4),'a1'),times(plus(Q5,Q6),'a2'),times(plus(Q7,Q8),'a3'));
opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

//dilated='0';
dilated='0';
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;



m.heaviside=['A','J'];


createBaseFiles(m);
