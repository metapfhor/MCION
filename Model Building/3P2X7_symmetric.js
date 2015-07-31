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
paramNames=['a','b','g12','E12'];
m=new model('ThreeP2X7Sym');


m.addState(stateNames);
m.addParam(paramNames);
m.addKineticParam(paramNames.slice(0,4))


makeGlobal(m.states) 

opened=O1;
fopened=minus('V','E12');
Iopened=times('g12',opened,fopened)

Itot=Iopened;


m.current=times('10^12',Itot);
m.opened=opened;
m.dilated="0";



O1.solution='a^2*amp^2/(b^2+a^2*amp^2+a*amp*b)-(1/2)*a*amp*(a*amp*b+a*amp*(a*amp*b)^(1/2)+b*(a*amp*b)^(1/2))*exp((-a*amp-b+(a*amp*b)^(1/2))*t)/(b*(b^2+a^2*amp^2+a*amp*b))-(1/2)*a*amp*(-b*(a*amp*b)^(1/2)-a*amp*(a*amp*b)^(1/2)+a*amp*b)*exp((-a*amp-b-(a*amp*b)^(1/2))*t)/(b*(b^2+a^2*amp^2+a*amp*b))';

createBaseFiles(m);

