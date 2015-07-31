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


stateNames=['C1','C2','C3','C4','O1','O2','O3','O4']
//paramNames=['K1','tau1','K2','tau2','K3','tau3','K5','tau5','L1','K4','tau4','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','A','V'];
paramNames=['K1','k1','K2','k3','K3','k5','K5','k7','K6','k9','K7','k11','L1','K4','L3','g12','g34','E12','E34','A','V'];
m=new model('fullP2X7Therm');


m.addState(stateNames);
m.addParam(paramNames);
//m.addAuxiliary({k1:'1/(tau1*(K1/3+1))',k2:'(K1/3)/(tau1*(K1/3+1))',k3:'1/(2*tau2*(K2/2+1))',k4:'K2/(2*tau1*(K2/2+1))',k5:'1/(3*tau3*(K3+1))',k6:'K3/(tau3*(K3+1))',L3:'K4/(tau4*(K4+1))',L2:'1/(tau4*(K4+1))',k7:'1/(tau5*(K5+1))',k8:'K5/(tau5*(K5+1))'});
m.addAuxiliary({k2:'K1*k1',k4:'K2*k3',k6:'K3*k5',L2:'L3/K4',k8:'K5*k7',k10:'K6*k9',k12:'K7*k11'});


makeGlobal(m.states) 

open0='3*k2*A';
open0sens='3*k12*A';
close1='k1';
close1sens='k11';

open1='2*k4*A';
open1sens='2*10*A'
close2='2*k3';
close2sens='2*k9';

open2='k6*A';
close3='3*k5';


open='k2*A';

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

m.naive='C1'

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.linkStates(C1,C2,'k2*A','k1');
m.linkStates(C2,O1,'k4*A','k3');
m.linkStates(O1,O2,'k6*A','k5');


//bottom row
m.linkStates(C4,C3,'k12*A','k11');
m.linkStates(C3,O4,'k10*A','k9');
m.linkStates(O4,O3,'k8*A','k7');

///////////////////////
//Vertical Links
//////////////////////

//middle to lower row
m.linkStates(O2,O3,'L3','L2');//dilation pathway

//middle to upper row
//m.linkStates(D1,C1,'H1');//back to naive state
//m.linkStates(D2,C2,'H2','H3');
//m.linkStates(D3,O1,'H4','H5');
//m.linkStates(D4,O2,'H6','H7');

createBaseFiles(m);
