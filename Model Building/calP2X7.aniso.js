modelling=require('./model.js');

testing=require('./modelTesting.js');

fs=require('fs')

function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(modelling);
makeGlobal(testing);


stateNames=['C1','C2','C3','C4','O1','O2','O3','O4','D1','D2','D3','D4']
paramNames=['k1','k2','k3','k4','k5','k6','L1','L2','L3','H1','H2','H3','H4','H5','H6','H7','r1','r2','kca','koff','C','g12','g34','E12','E34','A','V'];
m=new model('calP2X7');


m.addState(stateNames);
m.addParam(paramNames);


makeGlobal(m.states) 



m.calLinkStates=function(s1,s2,kfor,kback){
	s1ca=this.states[s1.name+'ca']
	if (s1ca==undefined) {
		s1ca=new state(s1.name+'ca');
		this.addState(s1ca);
		this.linkStates(s1,s1ca,'kca*C','koff')
	}
	s2ca=this.states[s2.name+'ca']
	if (s2ca==undefined) {
		s2ca=new state(s2.name+'ca');
		this.addState(s2ca);
		this.linkStates(s2,s2ca,'kca*C','koff')
	}
	this.linkStates(s1,s2,kfor,kback);
	function replaceKinetics(k) {
		if (k==undefined) {
			return k;
		}
		var out = k;
		if (out instanceof algebra) {
			out=out.replaceString('k1','k1*r1');
			out=out.replaceString('k3','k3*r1');
			out=out.replaceString('k5','k5*r1');
			out=out.replaceString('k2','k2*r2');
			out=out.replaceString('k4','k4*r2');
			out=out.replaceString('k6','k6*r2');
		}else{
			out=out.replace(/k1/g,'k1*r1');
			out=out.replace(/k3/g,'k3*r1');
			out=out.replace(/k5/g,'k5*r1');
			out=out.replace(/k2/g,'k2*r2');
			out=out.replace(/k4/g,'k4*r2');
			out=out.replace(/k6/g,'k6*r2');
		}
		return out;
	}
	this.linkStates(s1ca,s2ca,replaceKinetics(kfor),replaceKinetics(kback))
}


open0='3*k2*A';

close1='k1';

open1='2*k4*A';
close2='2*k3';

open2='k6*A';
close3='3*k5';

open='k2*A';

open0='3*k2*A';
close1='k1';

open1='2*k4*A';
close2='2*k3';

open2='k6*A';
close3='3*k5';

open='k2*A';
close='k1'

opened=plus(O1,O2);
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

dilated=plus(O3,O4);
fdilated=minus('V','E34');
Idilated=times('g34',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.calLinkStates(C1,C2,open0,close1);
m.calLinkStates(C2,O1,open1,close2);
m.calLinkStates(O1,O2,open2,close3);

//top row
m.calLinkStates(D1,D2,open0,close1);
m.calLinkStates(D2,D3,open1,close2);
m.calLinkStates(D3,D4,open2,close3);

//bottom row
m.calLinkStates(C4,C3,'3*'+open,close);
m.calLinkStates(C3,O4,'2*'+open,'2*'+close);
m.calLinkStates(O4,O3,open,'3*'+close);

///////////////////////
//Vertical Links
//////////////////////

//middle to lower row
m.calLinkStates(C4,C1,'L1');//back to naive state
m.calLinkStates(O2,O3,'L3','L2');//dilation pathway

//middle to upper row
m.calLinkStates(D1,C1,'H1');//back to naive state
m.calLinkStates(D2,C2,'H2','H3');
m.calLinkStates(D3,O1,'H2','H3');
m.calLinkStates(D4,O2,'H6','H7');




makeGlobal(m.states) 

opened=plus(O1,O2,O1ca,O2ca);
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

dilated=plus(O3,O4,O3ca,O4ca);
fdilated=minus('V','E34');
Idilated=times('g34',dilated,fdilated)

Itot=plus(Iopened,Idilated);


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated=dilated;




createBaseFiles(m);

