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
paramNames=['a','b','ra','rb','g12','E12'];
m=new model('ThreeP2X7ASym');


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

O1.solution='-(1/2)*ra*a^2*amp^2*(a^2*amp^2+ra^2*a^2*amp^2-2*ra*a^2*amp^2+2*ra*a*amp*rb*b-2*rb*b*a*amp+2*a*amp*b+ra*a*amp*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2)+2*b*ra*a*amp+a*amp*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2)+rb^2*b^2+b^2-2*b^2*rb+b*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2)+rb*b*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2))*exp((-(1/2)*a*amp-(1/2)*rb*b-(1/2)*b-(1/2)*ra*a*amp+(1/2)*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2))*t)/((b^2*rb+rb*b*a*amp+ra*a^2*amp^2)*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2))-(1/2)*ra*a^2*amp^2*(a^2*amp^2+ra^2*a^2*amp^2-2*ra*a^2*amp^2+2*ra*a*amp*rb*b-2*rb*b*a*amp+2*a*amp*b-ra*a*amp*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2)+2*b*ra*a*amp-a*amp*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2)+rb^2*b^2+b^2-2*b^2*rb-b*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2)-rb*b*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2))*exp((-(1/2)*a*amp-(1/2)*rb*b-(1/2)*b-(1/2)*ra*a*amp-(1/2)*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2)^(1/2))*t)/((b^2*rb+rb*b*a*amp+ra*a^2*amp^2)*(a^2*amp^2-2*rb*b*a*amp+2*a*amp*b-2*ra*a^2*amp^2+rb^2*b^2-2*b^2*rb+2*ra*a*amp*rb*b+b^2+2*b*ra*a*amp+ra^2*a^2*amp^2))+ra*a^2*amp^2/(b^2*rb+rb*b*a*amp+ra*a^2*amp^2)';

createBaseFiles(m);

