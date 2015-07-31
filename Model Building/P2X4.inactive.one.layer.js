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
paramNames=['d1','d2','d3','d4','d5','d6','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L10','L11','L12','L13','L14','L20','L21','L22','L23','L24','L30','L31','L32','L33','L34','L40','L41','L42','L43','L44','L50','L51','L52','L53','L54','L60','L61','L62','L63','L64','H0','H11','H5','kd1','ks1','H3','H4','g1','g2','E1','E2','delta','epsilon','mu','A','J','V'];


m=new model('P2X4Inact1');

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

hill1=hill('J','delta',4);
hill2=hill('J','epsilon',4);
hill3=hill('J','mu',4);

IVM10=times('L20',hill('J','delta',4));
IVM11=times('L21',hill('J','delta',4));
IVM12=times('L22',hill('J','delta',4));
IVM13=times('L23',hill('J','delta',4));
IVM14=times('L24',hill('J','delta',4));

IVM20=times('L40',hill('J','epsilon',4));
IVM21=times('L41',hill('J','epsilon',4));
IVM22=times('L42',hill('J','epsilon',4));
IVM23=times('L43',hill('J','epsilon',4));
IVM24=times('L44',hill('J','epsilon',4));

IVM30=times('L60',hill('J','mu',4));
IVM31=times('L61',hill('J','mu',4));
IVM32=times('L62',hill('J','mu',4));
IVM33=times('L63',hill('J','mu',4));
IVM34=times('L64',hill('J','mu',4));





////////////////
//Horizontal Links
//////////////

//Naive Row
m.linkStates(C0,C1,'H0','H5');
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




//1st Binding of IVM
m.linkStates(C0,C3,IVM10,'L10');
m.linkStates(C1,C3,IVM11,'L11');
m.linkStates(C2,C4,IVM12,'L12');
m.linkStates(Q1,Q3,IVM13,'L13');
m.linkStates(Q2,Q4,IVM14,'L14');




//2nd binding of IVM
m.linkStates(C0,C5,IVM20,'L30');
m.linkStates(C3,C5,IVM21,'L31');
m.linkStates(C4,C6,IVM22,'L32');
m.linkStates(Q3,Q5,IVM23,'L33');
m.linkStates(Q4,Q6,IVM24,'L34');



//3rd binding of IVM
m.linkStates(C0,C7,IVM30,'L50');
m.linkStates(C5,C7,IVM31,'L51');
m.linkStates(C6,C8,IVM32,'L52');
m.linkStates(Q5,Q7,IVM33,'L53');
m.linkStates(Q6,Q8,IVM34,'L54');






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
