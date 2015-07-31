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

stateNames=['C0','C1','C2','C3','C4','C5','C6','C7','C8','Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','D11','D12','D13','D14','Z'];
paramNames=['k1','k2','k3','k4','k5','k6','L1','L2','L3','L4','L5','L6','W1','W2','H0','H11','H5','kd1','ks1','H3','H4','g1','g2','E1','E2','r1','r2','r3','v1','v2','v3','rho1','rho2','rho3','gamma1','gamma2','gamma3','delta','epsilon','mu','A','J','V'];


m=new model('P2X4Inact1factor');

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


//
//IVM31=times('L6',hill('J','mu',4));
//IVM32=times('rho1*L6',hill('J','mu',4));
//IVM33=times('rho2*L6',hill('J','mu',4));
//IVM34=times('rho3*L6',hill('J','mu',4));


IVM31=times('L6',hill('J','mu',4));
IVM32=times('L6',hill('J','mu',4));
IVM33=times('L6',hill('J','mu',4));
IVM34=times('L6',hill('J','mu',4));



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


////////////
//Vertical Links
///////////

//Desensitization of Naive Row
m.linkStates(C2,D12,'kd1','ks1');
m.linkStates(Q1,D13,'kd1','ks1');
m.linkStates(Q2,D14,'kd1','ks1');




//1st Binding of IVM
m.linkStates(C0,C3,IVM10,'W1');
m.linkStates(C1,C3,IVM11,'L1');
m.linkStates(C2,C4,IVM12,'gamma1*L1');
m.linkStates(Q1,Q3,IVM13,'gamma2*L1');
m.linkStates(Q2,Q4,IVM14,'gamma3*L1');




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

//
//m.linkStates(C5,C7,IVM31,'L5');
//m.linkStates(C6,C8,IVM32,'L5');
//m.linkStates(Q5,Q7,IVM33,'L5');
//m.linkStates(Q6,Q8,IVM34,'L5');






//Internalization 
m.linkStates(D14,Z,'H3');


//Return to Sensitized
m.linkStates(D11,C1,'H11');

//Externalization
m.linkStates(Z,C1,'H4');


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

m.watched=[C1,C3,C5,C7,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,D11,D12,D13,D14,Z]
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
