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

//stateNames=['C1','C2','C3','C4','C5','C6','C7','C8','CD1','CD2','CD3','CD4','CD5','CD6','CD7','CD8','Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','QD1','QD2','QD3','QD4','QD5','QD6','QD7','QD8','D1','D2','D3','D4','Z'];
stateNames=['C1','C2','C3','C4','C5','C6','C7','C8','CD3','CD4','CD5','CD6','CD7','CD8','Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','QD3','QD4','QD5','QD6','QD7','QD8','D1','D2','D3','D4','Z'];

paramNames=['k1','k2','k3','k4','k5','k6','kd','ku','L1','L2','L3','L4','L5','L6','H1','H2','H3','H4','g1','g2','E1','E2','delta','epsilon','mu','A','J','V','n1','n2','n3','v1','v2','v3','r1','r2','r3','w1','w2','w3','s1','s2','s3','rho1','rho2','rho3'];


m=new model('potentP2X4pool');

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

open11d=times('k2','A');
open12d=times('k4','A');
open13d=times('k6','A');
open21d=times('s1','k2','A');
open22d=times('s1','k4','A');
open23d=times('s1','k6','A');
open31d=times('s2','k2','A');
open32d=times('s2','k4','A');
open33d=times('s2','k6','A');
open41d=times('s3','k2','A');
open42d=times('s3','k4','A');
open43d=times('s3','k6','A');

function hill(x,ec50,n) {
	if (n==undefined) {
		n=1;
	}
	return divide(new power(x,n),plus(new power(x,n),new power(ec50,n)))
}

IVM1=times('L2',hill('J','delta',4));
IVM2=times('L4',hill('J','epsilon',4));
IVM3=times('L6',hill('J','mu',4));

////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');


//1st IVM Row
m.linkStates(C3,C4,open21,'v1*k1');
m.linkStates(C4,Q3,open22,'v1*k3');
m.linkStates(Q3,Q4,open23,'v1*k5');

//1st Dilated Row
m.linkStates(CD3,CD4,open21d,'w1*k1');
m.linkStates(CD4,QD3,open22d,'w1*k3');
m.linkStates(QD3,QD4,open23d,'w1*k5');

//2nd IVM Row
m.linkStates(C5,C6,open31,'v2*k1');
m.linkStates(C6,Q5,open32,'v2*k3');
m.linkStates(Q5,Q6,open33,'v2*k5');

//2nd Dilated Row
m.linkStates(CD5,CD6,open31d,'w2*k1');
m.linkStates(CD6,QD5,open32d,'w2*k3');
m.linkStates(QD5,QD6,open33d,'w2*k5');

//3rd IVM Row
m.linkStates(C7,C8,open41,'v3*k1');
m.linkStates(C8,Q7,open42,'v3*k3');
m.linkStates(Q7,Q8,open43,'v3*k5');

//3rd Dilated Row
m.linkStates(CD7,CD8,open41d,'w3*k1');
m.linkStates(CD8,QD7,open42d,'w3*k3');
m.linkStates(QD7,QD8,open43d,'w3*k5');

//Desensitized Row
m.linkStates(D1,D2,open11,'k1');
m.linkStates(D2,D3,open12,'k3');
m.linkStates(D3,D4,open13,'k5');


//Dilation pathway

m.linkStates(Q4,QD4,'kd*J','ku');
m.linkStates(Q3,QD3,'kd*J','ku');
m.linkStates(Q6,QD6,'kd*J','ku');
m.linkStates(Q5,QD5,'kd*J','ku');
m.linkStates(Q8,QD8,'kd*J','ku');
m.linkStates(Q7,QD7,'kd*J','ku');

m.linkStates(C4,CD4,'kd*J','ku');
m.linkStates(C3,CD3,'kd*J','ku');
m.linkStates(C6,CD6,'kd*J','ku');
m.linkStates(C5,CD5,'kd*J','ku');
m.linkStates(C8,CD8,'kd*J','ku');
m.linkStates(C7,CD7,'kd*J','ku');

////////////
//Vertical Links
///////////

//Desensitization of Naive Row
m.linkStates(C2,D2,'H2');
m.linkStates(Q1,D3,'H2');
m.linkStates(Q2,D4,'H2');




//1st Binding of IVM
m.linkStates(C1,C3,IVM1,'L1');
m.linkStates(C2,C4,times('rho1',IVM1),'L1');
m.linkStates(Q1,Q3,times('rho2',IVM1),'L1');
m.linkStates(Q2,Q4,times('rho3',IVM1),'L1');




//2nd binding of IVM
m.linkStates(C3,C5,IVM2,'L3');
m.linkStates(C4,C6,times('rho1',IVM2),'L3');
m.linkStates(Q3,Q5,times('rho2',IVM2),'L3');
m.linkStates(Q4,Q6,times('rho3',IVM2),'L3');

//2nd binding of IVM (Dilated)
m.linkStates(CD3,CD5,IVM2,'L3');
m.linkStates(CD4,CD6,times('rho1',IVM2),'L3');
m.linkStates(QD3,QD5,times('rho2',IVM2),'L3');
m.linkStates(QD4,QD6,times('rho3',IVM2),'L3');

//3rd binding of IVM
m.linkStates(C5,C7,IVM3,'L5');
m.linkStates(C6,C8,IVM3,'L5');
m.linkStates(Q5,Q7,IVM3,'L5');
m.linkStates(Q6,Q8,IVM3,'L5');

//3rd binding of IVM (Dilated)
m.linkStates(CD5,CD7,IVM3,'L5');
m.linkStates(CD6,CD8,IVM3,'L5');
m.linkStates(QD5,QD7,IVM3,'L5');
m.linkStates(QD6,QD8,IVM3,'L5');


//Internalization 
m.linkStates(D4,Z,'H3');
//Externalization
m.linkStates(D1,C1,'H1');
m.linkStates(Z,C1,'H4');


opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

dilated=plus(Q3,Q4,Q5,Q6,Q7,Q8,QD3,QD4,QD5,QD6,QD7,QD8);
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;



m.heaviside=['A','J']


m.watched=[Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,QD3,QD4,QD5,QD6,QD7,QD8]


createBaseFiles(m);
