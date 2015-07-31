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

stateNames=['C0','C1','C2','C3','C4','C5','C6','C7','C8','Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','D11','D12','D13','D14','D21','D22','D23','D24','D31','D32','D33','D34','D41','D42','D43','D44','Z'];
paramNames=['k1','k2','k3','k4','k5','k6','L1','L2','L3','L4','L5','L6','W2','H0','H11','H12','H13','H14','H5','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','H3','H3D','H4','g1','g2','E1','E2','delta','epsilon','mu','A','J','V','n1','n2','n3','r1','r2','r3','v1','v2','v3'];


m=new model('P2X4Inact2factor');

m.addState(stateNames);
m.addParam(paramNames);

m.addAuxiliary();

makeGlobal(m.states)

open11=times('k2','A');
open12=times('k4','A');
open13=times('k6','A');
open21=times('r1*k2','A');
open22=times('r1*k4','A');
open23=times('r1*k6','A');
open31=times('r2*k2','A');
open32=times('r2*k4','A');
open33=times('r2*k6','A');
open41=times('r3*k2','A');
open42=times('r3*k4','A');
open43=times('r3*k6','A');


function hill(x,ec50,n) {
	if (n==undefined) {
		n=1;
	}
	return divide(new power(x,n),plus(new power(x,n),new power(ec50,n)))
}

hill1=hill('J','delta',4);
hill2=hill('J','epsilon',4);
hill3=hill('J','mu',4);

IVM10=times('W2',hill('J','delta',4));
IVM11=times('L2',hill('J','delta',4));
IVM12=times('L2',hill('J','delta',4));
IVM13=times('L2',hill('J','delta',4));
IVM14=times('L2',hill('J','delta',4));

IVM21=times('L4',hill('J','epsilon',4));
IVM22=times('L4',hill('J','epsilon',4));
IVM23=times('L4',hill('J','epsilon',4));
IVM24=times('L4',hill('J','epsilon',4));


IVM31=times('L6',hill('J','mu',4));
IVM32=times('L6',hill('J','mu',4));
IVM33=times('L6',hill('J','mu',4));
IVM34=times('L6',hill('J','mu',4));


IVM11D=times('L2',hill('J','delta',4));
IVM12D=times('L2',hill('J','delta',4));
IVM13D=times('L2',hill('J','delta',4));
IVM14D=times('L2',hill('J','delta',4));

IVM21D=times('L4',hill('J','epsilon',4));
IVM22D=times('L4',hill('J','epsilon',4));
IVM23D=times('L4',hill('J','epsilon',4));
IVM24D=times('L4',hill('J','epsilon',4));

IVM31D=times('L6',hill('J','mu',4));
IVM32D=times('L6',hill('J','mu',4));
IVM33D=times('L6',hill('J','mu',4));
IVM34D=times('L6',hill('J','mu',4));


////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C0,C1,'H0','H5');
m.linkStates(C1,C2,open11,'k1');
m.linkStates(C2,Q1,open12,'k3');
m.linkStates(Q1,Q2,open13,'k5');



//1st IVM Row
m.linkStates(C3,C4,open21,'v1*k1');
m.linkStates(C4,Q3,open22,'v1*k3');
m.linkStates(Q3,Q4,open23,'v1*k5');



//2nd IVM Row
m.linkStates(C5,C6,open31,'v2*k1');
m.linkStates(C6,Q5,open32,'v2*k3');
m.linkStates(Q5,Q6,open33,'v2*k5');



//3rd IVM Row
m.linkStates(C7,C8,open41,'v3*k1');
m.linkStates(C8,Q7,open42,'v3*k3');
m.linkStates(Q7,Q8,open43,'v3*k5');



//Desensitized System
m.linkStates(D11,D12,'k2*A','k1');
m.linkStates(D12,D13,'k4*A','k3');
m.linkStates(D13,D14,'k6*A','k5');

m.linkStates(D21,D22,'r1*k2*A','v1*k1');
m.linkStates(D22,D23,'r1*k4*A','v1*k3');
m.linkStates(D23,D24,'r1*k6*A','v1*k5');

m.linkStates(D31,D32,'r2*k2*A','v2*k1');
m.linkStates(D32,D33,'r2*k4*A','v2*k3');
m.linkStates(D33,D34,'r2*k6*A','v2*k5');

m.linkStates(D41,D42,'r3*k2*A','v3*k1');
m.linkStates(D42,D43,'r3*k4*A','v3*k3');
m.linkStates(D43,D44,'r3*k6*A','v3*k5');

////////////
//Vertical Links
///////////

//Desensitization of Naive Row
m.linkStates(C2,D12,'kd1','ks1');
m.linkStates(Q1,D13,'kd1','ks1');
m.linkStates(Q2,D14,'kd1','ks1');

m.linkStates(C4,D22,'kd2','ks2');
m.linkStates(Q3,D23,'kd2','ks2');
m.linkStates(Q4,D24,'kd2','ks2');

m.linkStates(C6,D32,'kd3','ks3');
m.linkStates(Q5,D33,'kd3','ks3');
m.linkStates(Q6,D34,'kd3','ks3');

m.linkStates(C8,D42,'kd4','ks4');
m.linkStates(Q7,D43,'kd4','ks4');
m.linkStates(Q8,D44,'kd4','ks4');



//1st Binding of IVM
//m.linkStates(C0,C3,IVM10,'W1');
m.linkStates(C0,C3,IVM10);
m.linkStates(C1,C3,IVM11,'L1');
m.linkStates(C2,C4,IVM12,'L1');
m.linkStates(Q1,Q3,IVM13,'L1');
m.linkStates(Q2,Q4,IVM14,'L1');




//2nd binding of IVM
m.linkStates(C3,C5,IVM21,'L3');
m.linkStates(C4,C6,IVM22,'L3');
m.linkStates(Q3,Q5,IVM23,'L3');
m.linkStates(Q4,Q6,IVM24,'L3');



//3rd binding of IVM
m.linkStates(C5,C7,IVM31,'L5');
m.linkStates(C6,C8,IVM32,'L5');
m.linkStates(Q5,Q7,IVM33,'L5');
m.linkStates(Q6,Q8,IVM34,'L5');


//1st Binding of IVM (Desensitized)
m.linkStates(D11,D21,IVM11D,'L1');
m.linkStates(D12,D22,IVM12D,'L1');
m.linkStates(D13,D23,IVM13D,'L1');
m.linkStates(D14,D24,IVM14D,'L1');




//2nd binding of IVM (Desensitized)
m.linkStates(D21,D32,IVM21D,'L3');
m.linkStates(D22,D31,IVM22D,'L3');
m.linkStates(D23,D33,IVM23D,'L3');
m.linkStates(D24,D34,IVM24D,'L3');



//3rd binding of IVM (Desensitized)
m.linkStates(D31,D41,IVM31D,'L5');
m.linkStates(D32,D42,IVM32D,'L5');
m.linkStates(D33,D43,IVM33D,'L5');
m.linkStates(D34,D44,IVM34D,'L5');





//Internalization 
m.linkStates(D14,Z,'H3');
m.linkStates(D24,Z,'H3D');
m.linkStates(D34,Z,'H3D');
m.linkStates(D44,Z,'H3D');

//Return to Sensitized
//m.linkStates(D11,C1,'H11');
//m.linkStates(D21,C3,'H12');
//m.linkStates(D31,C5,'H13');
//m.linkStates(D41,C7,'H14');
m.linkStates(D11,C1,'ks1');
m.linkStates(D21,C3,'ks2');
m.linkStates(D31,C5,'ks3');
m.linkStates(D41,C7,'ks4');
//Externalization
m.linkStates(Z,C0,'H4');


//opened=plus(Q1,Q2,times(plus(Q3,Q4),'a1'),times(plus(Q5,Q6),'a2'),times(plus(Q7,Q8),'a3'));
opened=plus(Q1,Q2,Q3,Q4);
fopened=minus('V','E1');
//Iopened=times('g1',opened,fopened);
Iopened=times('g1',opened,fopened);

//dilated='0';

dilated=plus(Q5,Q6,Q7,Q8);
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated);
//Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;


m.naive={C1:'1/(1+H5/H0)',C0:'1/(1+H0/H5)'};

m.heaviside=['A','J']

m.watched=[C0,C1,C2,C3,C5,C7,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,D11,D12,D13,D14,Z]
//m.watched=[C1,Q1,Q2,D11,Z]

createBaseFiles(m);
//
//console.info('\\begin{align\*}')
//
//for (var s in m.states) {
//	str='d'+s+'/dt='+m.states[s].derivativeString();
//	str=str.replace(/ks1/g,'k_{s,1}');
//	str=str.replace(/ks2/g,'k_{s,2}');
//	str=str.replace(/ks3/g,'k_{s,3}');
//    str=str.replace(/ks4/g,'k_{s,4}');
//	str=str.replace(/kd1/g,'k_{d,1}');
//	str=str.replace(/kd2/g,'k_{d,2}');
//	str=str.replace(/kd3/g,'k_{d,3}');
//    str=str.replace(/kd4/g,'k_{d,4}');
//	str=str.replace(/H3D/g,'H_{3,D}');
//	
//	str=str.replace(hill1.toString(),'f(J)')
//	str=str.replace(hill2.toString(),'g(J)')
//	str=str.replace(hill3.toString(),'h(J)');
//	
//	if (s!='Z') {
//		console.info(str.texifyCode().replace('=',' & =')+'\\\\');
//	}else{
//		console.info(str.texifyCode().replace('=',' & ='));
//	}
//	
//}
//
//console.info('\\end{align\*}')
