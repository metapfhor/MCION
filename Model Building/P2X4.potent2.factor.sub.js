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

stateNames=['C1','C2','Q1','Q2','D1','D2','D3','D4','Z'];
paramNames=['k1','k2','k3','k4','k5','k6','H1','H2','H3','H4','g1','g2','E1','E2','A','J','V'];

m={};

m=new model('potent2P2X4sub');

m.addState(stateNames);
m.addParam(paramNames);

makeGlobal(m.states)

open11=times('k2','A');
open12=times('k4','A');
open13=times('k6','A');
open21=times('r1','k2','A');
open22=times('r1','k4','A');
open23=times('r1','k6','A');
open31=times('r2','k2','A');
open32=times('r2','k4','A');
open33=times('r2','k6','A');
open41=times('r3','k2','A');
open42=times('r3','k4','A');
open43=times('r3','k6','A');

function hill(x,ec50,n) {
	if (n==undefined) {
		n=1;
	}
	return divide(new power(x,n),plus(new power(x,n),new power(ec50,n)))
}

IVM1=times('L2',hill('J','delta','n1'));
IVM2=times('L4',hill('J','epsilon','n2'));
IVM3=times('L6',hill('J','mu','n3'));

////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');


//Desensitized Row
m.linkStates(D1,D2,open11,'k1');
m.linkStates(D2,D3,open12,'k3');
m.linkStates(D3,D4,open13,'k5');

//Desensitization of Naive Row
m.linkStates(C2,D2,'H2');
m.linkStates(Q1,D3,'H2');
m.linkStates(Q2,D4,'H2');





//Internalization 
m.linkStates(D4,Z,'H3');
//Externalization
m.linkStates(D1,C1,'H1');
m.linkStates(Z,C1,'H4');


opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',plus(Q1,Q2),fopened)

dilated='0';
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;



m.heaviside=['A','J']

m.watched=[Q1,Q2]

createBaseFiles(m);
