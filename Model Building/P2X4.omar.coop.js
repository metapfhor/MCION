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

stateNames=['C1','C2','C3','C4','C5','C6','C7','C8','Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','D1','D2','D3','D4','Z'];
paramNames=['k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k21','k22','k23','k24','L10','L20','L30','L40','L50','L60','L11','L21','L31','L41','L51','L61','L12','L22','L32','L42','L52','L62','L13','L23','L33','L43','L53','L63','H1','H2','H3','H4','g1','g2','E1','E2','delta','epsilon','mu','A','J','V','n1','n2','n3','a1'];

m={};

//fully independent rates for all IVM & ATP binding events
m=new model('omarP2X4coop');

m.addState(stateNames);
m.addParam(paramNames);

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

IVM10=times('L20',hill('J','delta',4));
IVM11=times('L21',hill('J','delta',4));
IVM12=times('L22',hill('J','delta',4));
IVM13=times('L23',hill('J','delta',4));

IVM20=times('L40',hill('J','epsilon',4));
IVM21=times('L41',hill('J','epsilon',4));
IVM22=times('L42',hill('J','epsilon',4));
IVM23=times('L43',hill('J','epsilon',4));

IVM30=times('L60',hill('J','mu',4));
IVM31=times('L61',hill('J','mu',4));
IVM32=times('L62',hill('J','mu',4));
IVM33=times('L63',hill('J','mu',4));

////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');

//1st IVM Row
m.linkStates(C3,C4,open21,'k7');
m.linkStates(C4,Q3,open22,'k9');
m.linkStates(Q3,Q4,open23,'k11');

//2nd IVM Row
m.linkStates(C5,C6,open31,'k13');
m.linkStates(C6,Q5,open32,'k15');
m.linkStates(Q5,Q6,open33,'k17');

//3rd IVM Row
m.linkStates(C7,C8,open41,'k19');
m.linkStates(C8,Q7,open42,'k21');
m.linkStates(Q7,Q8,open43,'k23');

//Desensitized Row
m.linkStates(D1,D2,open11,'k1');
m.linkStates(D2,D3,open12,'k3');
m.linkStates(D3,D4,open13,'k5');

//Desensitization of Naive Row
m.linkStates(C2,D2,'H2');
m.linkStates(Q1,D3,'H2');
m.linkStates(Q2,D4,'H2');

//1st Binding of IVM
m.linkStates(C1,C3,IVM10,'L10');
m.linkStates(C2,C4,IVM11,'L11');
m.linkStates(Q1,Q3,IVM12,'L12');
m.linkStates(Q2,Q4,IVM13,'L13');



//2nd binding of IVM
m.linkStates(C3,C5,IVM20,'L30');
m.linkStates(C4,C6,IVM21,'L31');
m.linkStates(Q3,Q5,IVM22,'L32');
m.linkStates(Q4,Q6,IVM23,'L33');

//3rd binding of IVM
m.linkStates(C5,C7,IVM30,'L50');
m.linkStates(C6,C8,IVM31,'L51');
m.linkStates(Q5,Q7,IVM32,'L52');
m.linkStates(Q6,Q8,IVM33,'L53');



//Internalization 
m.linkStates(D4,Z,'H3');
//Externalization
m.linkStates(D1,C1,'H1');
m.linkStates(Z,C1,'H4');


opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

dilated=plus(Q3,Q4,Q5,Q6,Q7,Q8);
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;



m.heaviside=['A','J']

m.watched=[Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,C2,C3,C4,C5,C6,C7,C8];

createBaseFiles(m);
