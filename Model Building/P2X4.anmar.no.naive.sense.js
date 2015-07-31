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

stateNames=['C1','C2','C3','C4','Q1','Q2','Q3','Q4','D1','D2','D3','D4','Z'];
paramNames=['k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','g1','g2','E1','E2','alpha','beta','J'];

m={};

m=new model('anmarP2X4sense');

m.addState(stateNames);
m.addParam(paramNames);

function hill(x,ec50,n) {
	if (n==undefined) {
		n=1;
	}
	return divide(new power(x,n),plus(new power(x,n),new power(ec50,n)))
}

m.addAuxiliary({K:hill('J','beta',1),F:'1+alpha*K',G:'1-K'})

makeGlobal(m.states)

open11=times(3,'k2','A');
open12=times(2,'k4','A');
open13=times('k6','A');



K=hill('J','beta')


////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C1,C2,open11,'k1*G');
m.linkStates(C2,Q1,open12,'2*k3*G');
m.linkStates(Q1,Q2,open13,'3*k5*G');

//1st IVM Row
m.linkStates(C3,C4,'3*k2*A*F','k1*G');
m.linkStates(C4,Q3,'2*k2*A*F','2*k1*G');
m.linkStates(Q3,Q4,'k2*A*F','3*k1*G');

//Desensitized Row
m.linkStates(D1,D2,'3*k2*A','k1');
m.linkStates(D2,D3,'2*k4*A','2*k3');
m.linkStates(D3,D4,'k6*A','3*k5');

///////////////
//Vertical Links
///////////////

//Desensitization of Naive Row
m.linkStates(C2,D2,'H2');
m.linkStates(Q1,D3,'H2');
m.linkStates(Q2,D4,'H2');

//1st Binding of IVM

m.linkStates(Q2,Q4,times('L3','(1-G)'),'L2');
m.linkStates(C3,C1,'L1')



//Internalization 
m.linkStates(D4,Z,'H3');

//Externalization
m.linkStates(D1,C1,'H1');
m.linkStates(Z,C1,'H4');


opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

dilated=plus(Q3,Q4);
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;



m.heaviside=['A','J']



createBaseFiles(m);
