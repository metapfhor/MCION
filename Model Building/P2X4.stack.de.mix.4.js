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

stateNames=['C1','C2','C3','C4','C7','C8','Q1','Q2','Q3','Q4','Q7','Q8','D11','D12','D13','D14','D21','D22','D23','D24','D41','D42','D43','D44','Z'];
paramNames=['d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d19','d20','d21','d22','d23','d24','k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k19','k20','k21','k22','k23','k24','L11','L12','L13','L14','L21','L22','L23','L24','L51','L52','L53','L54','L61','L62','L63','L64','H11','H12','H14','kd1','kd2','kd4','ks1','ks2','ks4','H3','H3D','H4','g1','g2','E1','E2','delta','mu','A','J','V','n1','n2','n3','alpha1','alpha3','beta1','beta3'];


m=new model('P2X4StackDeMix4');

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

IVM11=times('L21',hill('J','delta',4));
IVM12=times('L22',hill('J','delta',4));
IVM13=times('L23',hill('J','delta',4));
IVM14=times('L24',hill('J','delta',4));



IVM31=times('L61',hill('J','mu',4));
IVM32=times('L62',hill('J','mu',4));
IVM33=times('L63',hill('J','mu',4));
IVM34=times('L64',hill('J','mu',4));



IVM11D=times('alpha1*L21',hill('J','delta',4));
IVM12D=times('alpha1*L22',hill('J','delta',4));
IVM13D=times('alpha1*L23',hill('J','delta',4));
IVM14D=times('alpha1*L24',hill('J','delta',4));


IVM31D=times('alpha3*L61',hill('J','mu',4));
IVM32D=times('alpha3*L62',hill('J','mu',4));
IVM33D=times('alpha3*L63',hill('J','mu',4));
IVM34D=times('alpha3*L64',hill('J','mu',4));


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






//3rd IVM Row
m.linkStates(C7,C8,open41,'k19');
m.linkStates(C8,Q7,open42,'k21');
m.linkStates(Q7,Q8,open43,'k23');



//Desensitized System
m.linkStates(D11,D12,'d2*A','d1');
m.linkStates(D12,D13,'d4*A','d3');
m.linkStates(D13,D14,'d6*A','d5');

m.linkStates(D21,D22,'d8*A','d7');
m.linkStates(D22,D23,'d10*A','d9');
m.linkStates(D23,D24,'d12*A','d11');


m.linkStates(D41,D42,'d20*A','d19');
m.linkStates(D42,D43,'d22*A','d21');
m.linkStates(D43,D44,'d24*A','d23');

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

m.linkStates(C8,D42,'kd4','ks4');
m.linkStates(Q7,D43,'kd4','ks4');
m.linkStates(Q8,D44,'kd4','ks4');



//1st Binding of IVM
m.linkStates(C1,C3,IVM11,'L11');
m.linkStates(C2,C4,IVM12,'L12');
m.linkStates(Q1,Q3,IVM13,'L13');
m.linkStates(Q2,Q4,IVM14,'L14');



//3rd binding of IVM
m.linkStates(C3,C7,IVM31,'L51');
m.linkStates(C4,C8,IVM32,'L52');
m.linkStates(Q3,Q7,IVM33,'L53');
m.linkStates(Q4,Q8,IVM34,'L54');


//1st Binding of IVM (Desensitized)
m.linkStates(D11,D21,IVM11D,'beta1*L11');
m.linkStates(D12,D22,IVM12D,'beta1*L12');
m.linkStates(D13,D23,IVM13D,'beta1*L13');
m.linkStates(D14,D24,IVM14D,'beta1*L14');






//3rd binding of IVM (Desensitized)
m.linkStates(D21,D41,IVM31D,'beta3*L51');
m.linkStates(D22,D42,IVM32D,'beta3*L52');
m.linkStates(D23,D43,IVM33D,'beta3*L53');
m.linkStates(D24,D44,IVM34D,'beta3*L54');





//Internalization 
m.linkStates(D14,Z,'H3');
m.linkStates(D24,Z,'H3D');
m.linkStates(D44,Z,'H3D');

//Return to Sensitized
m.linkStates(D11,C1,'H11');
m.linkStates(D21,C3,'H12');
m.linkStates(D41,C7,'H14');
//Externalization
m.linkStates(Z,C1,'H4');


//opened=plus(Q1,Q2,times(plus(Q3,Q4),'a1'),times(plus(Q5,Q6),'a2'),times(plus(Q7,Q8),'a3'));
opened=plus(Q1,Q2);
fopened=minus('V','E1');
Iopened=times('g1',opened,fopened)

//dilated='0';
dilated=plus(Q3,Q4,Q7,Q8);
fdilated=minus('V','E2');
Idilated=times('g2',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=plus(Q3,Q4,Q7,Q8);



m.heaviside=['A','J']

m.watched=[C3,C7,Q1,Q2,Q3,Q4,Q7,Q8,D11,D21,D41,Z]


createBaseFiles(m);


