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
//paramNames=['K1','tau1','K2','tau2','K3','tau3','K5','tau5','L1','K4','tau4','H1','H2','H3','H4','H5','H6','H7','g12','g34','E12','E34','A','V'];
paramNames=['K1','k1','K2','k3','K3','k5','Ks3','k7','Ks2','k9','Ks1','k11','L1','Ks','L3','H1','H2','H3','H4','H5','Kds','H7','g12','g34','E12','E34','A','V','alpha10','alpha1','alpha3','alpha32','alpha100'];
m=new model('fullP2X7Therm');

ATP='A';
m.heaviside=['A','J']


m.addState(stateNames);
m.addParam(paramNames);
//m.addAuxiliary({k1:'1/(tau1*(K1/3+1))',k2:'(K1/3)/(tau1*(K1/3+1))',k3:'1/(2*tau2*(K2/2+1))',k4:'K2/(2*tau1*(K2/2+1))',k5:'1/(3*tau3*(K3+1))',k6:'K3/(tau3*(K3+1))',L3:'K4/(tau4*(K4+1))',L2:'1/(tau4*(K4+1))',k7:'1/(tau5*(K5+1))',k8:'K5/(tau5*(K5+1))'});
//m.addAuxiliary({alpha:'hef(A>=10^-6,alpha0)',k2:'alpha*K1*k1',k4:'alpha*K2*k3',k6:'alpha*K3*k5',L2:'L3/K4',k8:'K5*k7',k10:'K6*k9',k12:'K7*k11',H6:'H7/K8'});
//m.addAuxiliary({alpha:'unitDefaultMap(A==[1e-6,3e-6,1e-5],[alpha10,alpha32,alpha100])',k2:'alpha*K1*k1',k4:'alpha*K2*k3',k6:'alpha*K3*k5',L2:'L3/Kd',k8:'K5*k7',k10:'K6*k9',k12:'K7*k11',H6:'H7/Kds'});
m.addAuxiliary({alpha:'unitDefaultMap(A==[1e-7,3e-7,1e-6,3e-6,1e-5],[alpha1,alpha3,alpha10,alpha32,alpha100])',k2:'alpha*K1*k1',k4:'alpha*K2*k3',k6:'alpha*K3*k5',L2:'L3/Ks',k8:'Ks3*k7',k10:'Ks2*k9',k12:'Ks1*k11',H6:'H7/Kds'});


makeGlobal(m.states) 

open0=times('k2','A');
open0sens='k12*A';
close1='k1';
close1sens='k11';

open1=times('k4','A');
open1sens='k10*A'
close2='k3';
close2sens='k9';

open2='k6*A';
open2sens='k8*A'
close3='k5';
close3sens='k7';



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
m.watched=[O1,O2,O3,O4];

m.naive='C1'

///////////////////////
//Horizontal Links
///////////////////////

//middle row
m.linkStates(C1,C2,open0,close1);
m.linkStates(C2,O1,open1,close2);
m.linkStates(O1,O2,open2,close3);

//top row
m.linkStates(D1,D2,open0,close1);
m.linkStates(D2,D3,open1,close2);
m.linkStates(D3,D4,open2,close3);

//bottom row
m.linkStates(C4,C3,open0sens,close1sens);
m.linkStates(C3,O4,open1sens,close2sens);
m.linkStates(O4,O3,open2sens,close3sens);

///////////////////////
//Vertical Links
//////////////////////

//middle to lower row
m.linkStates(C4,C1,'L1');//back to naive state
m.linkStates(O2,O3,'L3','L2');//dilation pathway

//middle to upper row
m.linkStates(D1,C1,'H1');//back to naive state
//m.linkStates(D2,C2,'H2','H3');
//m.linkStates(D3,O1,'H4','H5');
m.linkStates(D4,O2,'H6','H7');

createBaseFiles(m);

