printing=require('./modelPrinting.js');

function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(printing);

function initialConditions(m) {
	str ='{'
	if (m.naive!=undefined) {
		for (var k in m.states) {
			if (k==m.naive||m.naive.indexOf(k)!=-1) {
				str+='\''+k+'\':1,'
			}else{
				str+='\''+k+'\':0,'
			}
		}
	}else{
		for (var k in m.states) {
			str+='\''+k+'\':1,'
		}
	}
	
	return str.substr(0,str.length-1)+'}';
}

function variableDeclaration(m) {
	str ='{'
	for (var k in m.states) {
		s=m.states[k];
		str+='\''+k+'\':\''+s.derivativeString()+'\',';
	}
	return str.substr(0,str.length-1)+'}';
}

function dsTest(m) {
    var out = new modelPrintingScheme(m);
	out.name=function(){return 'dsTest'+m.name;};
	out.header = function(){
		return 'from PyDSTool import *\n'
				+'ic ='+initialConditions(m)+'\n'
				+'var = '+variableDeclaration(m)+'\n'
	
	}
	out.updates=function(){
		return 'DSargs = args()\nDSargs.name = \''+m.name+'\'\nDSargs.ics = ic\nDSargs.varspecs = var'
	}
	return out
}


module.exports.dsTest=dsTest