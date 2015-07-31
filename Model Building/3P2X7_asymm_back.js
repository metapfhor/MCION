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
//paramNames=['a1','b1','a2','b2','g12','E12'];
paramNames=['a','b','rb','g12','E12'];
m=new model('ThreeP2X7ASymBack');


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


O1.solution='-(1/2)*a^2*amp^2*(4*a*amp*b+2*a*amp*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)-2*b^2*rb+rb*b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+b^2+b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+rb^2*b^2)*exp((-a*amp-(1/2)*rb*b-(1/2)*b+(1/2)*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2))*t)/((rb*b*a*amp+b^2*rb+a^2*amp^2)*b*(4*a*amp+rb^2*b-2*rb*b+b))-(1/2)*(4*a*amp*b-2*a*amp*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)-2*b^2*rb-rb*b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+b^2-b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+rb^2*b^2)*a^2*amp^2*exp((-a*amp-(1/2)*rb*b-(1/2)*b-(1/2)*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2))*t)/((rb*b*a*amp+b^2*rb+a^2*amp^2)*b*(4*a*amp+rb^2*b-2*rb*b+b))+a^2*amp^2/(rb*b*a*amp+b^2*rb+a^2*amp^2)';
createBaseFiles(m);

