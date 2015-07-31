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

stateNames=['C0','C3','C4','Q3','Q4','D21','D22','D23','D24','Z'];
paramNames=['d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24','L10','L11','L12','L13','L14','L20','L21','L22','L23','L24','L30','L31','L32','L33','L34','L40','L41','L42','L43','L44','L50','L51','L52','L53','L54','L60','L61','L62','L63','L64','H0','H11','H12','H13','H14','H5','kd1','kd2','kd3','kd4','ks1','ks2','ks3','ks4','H3','H3D','H4','g1','g2','E1','E2','delta','epsilon','mu','A','J','V','n1','n2','n3','alpha1','alpha2','alpha3','beta1','beta2','beta3'];


m=new model('P2X4Inact2block1');

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




////////////////
//Horizontal Links
//////////////




//1st IVM Row
m.linkStates(C3,C4,open21,'k7');
m.linkStates(C4,Q3,open22,'k9');
m.linkStates(Q3,Q4,open23,'k11');






//Desensitized System


m.linkStates(D21,D22,'d8*A','d7');
m.linkStates(D22,D23,'d10*A','d9');
m.linkStates(D23,D24,'d12*A','d11');


////////////
//Vertical Links
///////////

//Desensitization of Naive Row

m.linkStates(C4,D22,'kd2','ks2');
m.linkStates(Q3,D23,'kd2','ks2');
m.linkStates(Q4,D24,'kd2','ks2');




//1st Binding of IVM
m.linkStates(C0,C3,IVM10,'L10');













//Internalization 

m.linkStates(D24,Z,'H3D');


//Return to Sensitized
m.linkStates(D21,C3,'H12');




//opened=plus(Q1,Q2,times(plus(Q3,Q4),'a1'),times(plus(Q5,Q6),'a2'),times(plus(Q7,Q8),'a3'));
opened=plus(Q3,Q4);
fopened=minus('V','E1');
//Iopened=times('g1',opened,fopened);
Iopened=times('g1',opened,fopened);

//dilated='0';


Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated='0';


m.naive={C0:'1'};

m.heaviside=['A','J']

m.watched=[C0,C3,Q3,Q4,D21,Z]
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
