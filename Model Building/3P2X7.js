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


stateNames=['O1']
paramNames=['a1','a2','b1','b2','g12','E12'];
m=new model('ThreeP2X7');


m.addState(stateNames);
m.addParam(paramNames);
m.addKineticParam(paramNames.slice(0,4))


makeGlobal(m.states) 

open0='a1*A';
close1='b1';

open1='a2*A';
close2='b2';


opened=O1;
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated="0";


O1.solution='a1*amp^2*a2/(b1*b2+b2*a1*amp+a1*amp^2*a2)-(1/2)*a2*amp^2*a1*(a1^2*amp^2+2*a1*amp*b1+a1*amp*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)-2*b2*a1*amp-2*a1*amp^2*a2+a2^2*amp^2+2*a2*amp*b1+2*a2*amp*b2+a2*amp*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)+b2*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)+b2^2+b1*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)+b1^2-2*b1*b2)*exp((-(1/2)*a1*amp-(1/2)*b2-(1/2)*b1-(1/2)*a2*amp+(1/2)*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2))*t)/((b1*b2+b2*a1*amp+a1*amp^2*a2)*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2))-(1/2)*(a1^2*amp^2-2*a1*amp^2*a2-a1*amp*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)-2*b2*a1*amp+2*a1*amp*b1-b2*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)-a2*amp*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)+2*a2*amp*b2+b1^2-b1*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2)+b2^2-2*b1*b2+2*a2*amp*b1+a2^2*amp^2)*a1*amp^2*a2*exp((-(1/2)*a1*amp-(1/2)*b2-(1/2)*b1-(1/2)*a2*amp-(1/2)*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2)^(1/2))*t)/((b1*b2+b2*a1*amp+a1*amp^2*a2)*(a1^2*amp^2-2*b2*a1*amp+2*a1*amp*b1-2*a1*amp^2*a2+b2^2-2*b1*b2+2*a2*amp*b2+b1^2+2*a2*amp*b1+a2^2*amp^2))';


createBaseFiles(m);

