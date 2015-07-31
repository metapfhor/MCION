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

stateNames=['C1','C2','Q1','Q2','D11','D12','D13','D14','Z'];
paramNames=['d1','d2','d3','d4','d5','d6','k1','k2','k3','k4','k5','k6','H11','kd1','ks1','H3','H4','H51','g1','g2','E1','E2','delta','epsilon','mu','A','J','V','n1','n2','n3'];


m=new model('P2X4Stack2sub');

m.addState(stateNames);
m.addParam(paramNames);

m.addAuxiliary();

makeGlobal(m.states)

open11=times('k2','A');
open12=times('k4','A');
open13=times('k6','A');
open21=times('k8','A');
open22=times('k10','A');
open23=times('k12','A');
open31=times('k14','A');
open32=times('k16','A');
open33=times('k18','A');
open41=times('k20','A');
open42=times('k22','A');
open43=times('k24','A');


function hill(x,ec50,n) {
	if (n==undefined) {
		n=1;
	}
	return divide(new power(x,n),plus(new power(x,n),new power(ec50,n)))
}




////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');






//Desensitized System
m.linkStates(D11,D12,'d2*A','d1');
m.linkStates(D12,D13,'d4*A','d3');
m.linkStates(D13,D14,'d6*A','d5');



////////////
//Vertical Links
///////////

//Desensitization of Naive Row
m.linkStates(C2,D12,'kd1','ks1');
m.linkStates(Q1,D13,'kd1','ks1');
m.linkStates(Q2,D14,'kd1','ks1');




//Internalization 
m.linkStates(D14,Z,'H3');


//Return to Sensitized
m.linkStates(D11,C1,'H11');

//Externalization
m.linkStates(Z,C1,'H4');


//opened=plus(Q1,Q2,times(plus(Q3,Q4),'a1'),times(plus(Q5,Q6),'a2'),times(plus(Q7,Q8),'a3'));
opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

dilated='0';

fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;



m.heaviside=['A','J']

m.watched=[C1,C2,Q1,Q2,D11,Z]


createBaseFiles(m);
