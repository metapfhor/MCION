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

stateNames=['C1','C2','C3','C4','C5','C6','C7','C8','CD1','CD2','CD3','CD4','CD5','CD6','CD7','CD8','CDD1','CDD2','CDD3','CDD4','CDD5','CDD6','CDD7','CDD8','Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','QD1','QD2','QD3','QD4','QD5','QD6','QD7','QD8','QDD1','QDD2','QDD3','QDD4','QDD5','QDD6','QDD7','QDD8','D1','D2','D3','D4','Z'];

paramNames=['k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','kd0','ku0','kd1','ku1','kd2','ku2','kd3','ku3','kdd0','kuu0','kdd1','kuu1','kdd2','kuu2','kdd3','kuu3','L1','L2','L3','L4','L5','L6','L7','L8','L9','L10','L11','L12','L13','L14','L15','L16','L17','L18','H1','H2','H3','H4','g1','g2','E1','E2','delta','epsilon','mu','A','J','V','n1','n2','n3','v1','v2','v3','r1','r2','r3','w1','w2','w3','s1','s2','s3','u1','u2','u3','q1','q2','q3'];


m=new model('potentP2X4block2');

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

open11d=times('k8','A');
open12d=times('k10','A');
open13d=times('k12','A');
open21d=times('s1','k8','A');
open22d=times('s1','k10','A');
open23d=times('s1','k12','A');
open31d=times('s2','k8','A');
open32d=times('s2','k10','A');
open33d=times('s2','k12','A');
open41d=times('s3','k8','A');
open42d=times('s3','k10','A');
open43d=times('s3','k12','A');

open11dd=times('k14','A');
open12dd=times('k16','A');
open13dd=times('k18','A');
open21dd=times('q1','k14','A');
open22dd=times('q1','k16','A');
open23dd=times('q1','k18','A');
open31dd=times('q2','k14','A');
open32dd=times('q2','k16','A');
open33dd=times('q2','k18','A');
open41dd=times('q3','k14','A');
open42dd=times('q3','k16','A');
open43dd=times('q3','k18','A');

function hill(x,ec50,n) {
	if (n==undefined) {
		n=1;
	}
	return divide(new power(x,n),plus(new power(x,n),new power(ec50,n)))
}

IVM1=times('L2',hill('J','delta',4));
IVM2=times('L4',hill('J','epsilon',4));
IVM3=times('L6',hill('J','mu',4));
IVM1D=times('L8',hill('J','delta',4));
IVM2D=times('L10',hill('J','epsilon',4));
IVM3D=times('L12',hill('J','mu',4));
IVM1DD=times('L14',hill('J','delta',4));
IVM2DD=times('L16',hill('J','epsilon',4));
IVM3DD=times('L18',hill('J','mu',4));

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

//1st Dilated (1) Row
m.linkStates(CD3,CD4,open21d,'w1*k7');
m.linkStates(CD4,QD3,open22d,'w1*k9');
m.linkStates(QD3,QD4,open23d,'w1*k11');

//1st Dilated (2) Row
m.linkStates(CDD3,CDD4,open21dd,'u1*k7');
m.linkStates(CDD4,QDD3,open22dd,'u1*k9');
m.linkStates(QDD3,QDD4,open23dd,'u1*k11');

//2nd IVM Row
m.linkStates(C5,C6,open31,'v2*k1');
m.linkStates(C6,Q5,open32,'v2*k3');
m.linkStates(Q5,Q6,open33,'v2*k5');

//2nd Dilated (1) Row
m.linkStates(CD5,CD6,open31d,'w2*k7');
m.linkStates(CD6,QD5,open32d,'w2*k9');
m.linkStates(QD5,QD6,open33d,'w2*k11');

//2nd Dilated (2) Row
m.linkStates(CDD5,CDD6,open31dd,'u2*k7');
m.linkStates(CDD6,QDD5,open32dd,'u2*k9');
m.linkStates(QDD5,QDD6,open33dd,'u2*k11');

//3rd IVM Row
m.linkStates(C7,C8,open41,'v3*k1');
m.linkStates(C8,Q7,open42,'v3*k3');
m.linkStates(Q7,Q8,open43,'v3*k5');

//3rd Dilated (1) Row
m.linkStates(CD7,CD8,open41d,'w3*k7');
m.linkStates(CD8,QD7,open42d,'w3*k9');
m.linkStates(QD7,QD8,open43d,'w3*k11');

//3rd Dilated (2) Row
m.linkStates(CDD7,CDD8,open41dd,'u3*k7');
m.linkStates(CDD8,QDD7,open42dd,'u3*k9');
m.linkStates(QDD7,QDD8,open43dd,'u3*k11');

//Desensitized Row
m.linkStates(D1,D2,open11,'k1');
m.linkStates(D2,D3,open12,'k3');
m.linkStates(D3,D4,open13,'k5');


//'Vertical' IVM pathway 

// 1st 'Vertical' IVM Binding
m.linkStates(Q2,QD2,'kd0*J','ku0');
m.linkStates(Q1,QD1,'kd0*J','ku0');
m.linkStates(Q4,QD4,'kd1*J','ku1');
m.linkStates(Q3,QD3,'kd1*J','ku1');
m.linkStates(Q6,QD6,'kd2*J','ku2');
m.linkStates(Q5,QD5,'kd2*J','ku2');
m.linkStates(Q8,QD8,'kd3*J','ku3');
m.linkStates(Q7,QD7,'kd3*J','ku3');

m.linkStates(C2,CD2,'kd0*J','ku0');
m.linkStates(C1,CD1,'kd0*J','ku0');
m.linkStates(C4,CD4,'kd1*J','ku1');
m.linkStates(C3,CD3,'kd1*J','ku1');
m.linkStates(C6,CD6,'kd2*J','ku2');
m.linkStates(C5,CD5,'kd2*J','ku2');
m.linkStates(C8,CD8,'kd3*J','ku3');
m.linkStates(C7,CD7,'kd3*J','ku3');

// 2nd 'Vertical' IVM Binding
m.linkStates(QD2,QDD2,'kdd0*J','kuu0');
m.linkStates(QD1,QDD1,'kdd0*J','kuu0');
m.linkStates(QD4,QDD4,'kdd1*J','kuu1');
m.linkStates(QD3,QDD3,'kdd1*J','kuu1');
m.linkStates(QD6,QDD6,'kdd2*J','kuu2');
m.linkStates(QD5,QDD5,'kdd2*J','kuu2');
m.linkStates(QD8,QDD8,'kdd3*J','kuu3');
m.linkStates(QD7,QDD7,'kdd3*J','kuu3');

m.linkStates(CD2,CDD2,'kdd0*J','kuu0');
m.linkStates(CD1,CDD1,'kdd0*J','kuu0');
m.linkStates(CD4,CDD4,'kdd1*J','kuu1');
m.linkStates(CD3,CDD3,'kdd1*J','kuu1');
m.linkStates(CD6,CDD6,'kdd2*J','kuu2');
m.linkStates(CD5,CDD5,'kdd2*J','kuu2');
m.linkStates(CD8,CDD8,'kdd3*J','kuu3');
m.linkStates(CD7,CDD7,'kdd3*J','kuu3');



////////////
//'Lateral' Links
///////////

//Desensitization of Naive Row
m.linkStates(C2,D2,'H2');
m.linkStates(Q1,D3,'H2');
m.linkStates(Q2,D4,'H2');
//Return to Naive
m.linkStates(D1,C1,'H1');




//1st Lateral Binding of IVM
m.linkStates(C1,C3,IVM1,'L1');
m.linkStates(C2,C4,IVM1,'L1');
m.linkStates(Q1,Q3,IVM1,'L1');
m.linkStates(Q2,Q4,IVM1,'L1');


//1st Lateral Binding of IVM (1 IVM)
m.linkStates(CD1,CD3,IVM1D,'L7');
m.linkStates(CD2,CD4,IVM1D,'L7');
m.linkStates(QD1,QD3,IVM1D,'L7');
m.linkStates(QD2,QD4,IVM1D,'L7');

//1st Lateral Binding of IVM (2 IVM)
m.linkStates(CDD1,CDD3,IVM1DD,'L13');
m.linkStates(CDD2,CDD4,IVM1DD,'L13');
m.linkStates(QDD1,QDD3,IVM1DD,'L13');
m.linkStates(QDD2,QDD4,IVM1DD,'L13');



//2nd Lateral Binding of IVM
m.linkStates(C3,C5,IVM2,'L3');
m.linkStates(C4,C6,IVM2,'L3');
m.linkStates(Q3,Q5,IVM2,'L3');
m.linkStates(Q4,Q6,IVM2,'L3');

//2nd Lateral Binding of IVM (1 IVM)
m.linkStates(CD3,CD5,IVM2D,'L9');
m.linkStates(CD4,CD6,IVM2D,'L9');
m.linkStates(QD3,QD5,IVM2D,'L9');
m.linkStates(QD4,QD6,IVM2D,'L9');

//2nd Lateral Binding of IVM (2 IVM)
m.linkStates(CDD3,CDD5,IVM2DD,'L15');
m.linkStates(CDD4,CDD6,IVM2DD,'L15');
m.linkStates(QDD3,QDD5,IVM2DD,'L15');
m.linkStates(QDD4,QDD6,IVM2DD,'L15');

//3rd Lateral Binding of IVM
m.linkStates(C5,C7,IVM3,'L5');
m.linkStates(C6,C8,IVM3,'L5');
m.linkStates(Q5,Q7,IVM3,'L5');
m.linkStates(Q6,Q8,IVM3,'L5');

//3rd Lateral Binding of IVM (1 IVM)
m.linkStates(CD5,CD7,IVM3D,'L11');
m.linkStates(CD6,CD8,IVM3D,'L11');
m.linkStates(QD5,QD7,IVM3D,'L11');
m.linkStates(QD6,QD8,IVM3D,'L11');

//3rd Lateral Binding of IVM (2 IVM)
m.linkStates(CDD5,CDD7,IVM3DD,'L17');
m.linkStates(CDD6,CDD8,IVM3DD,'L17');
m.linkStates(QDD5,QDD7,IVM3DD,'L17');
m.linkStates(QDD6,QDD8,IVM3DD,'L17');


//Internalization 
m.linkStates(D4,Z,'H3');
//Externalization
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


m.watched=[Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,QD1,QD2,QD3,QD4,QD5,QD6,QD7,QD8]


createBaseFiles(m);
