tex = require('./texify.js')
printing=require('./modelPrinting.js');

function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(printing);

function globalDeclaration(){
    function unwrapArr(arr){
	var str='';
	for (i in arr) {
	    if (arr[i] instanceof Array) {
		str=str.concat(unwrapArr(arr[i]))
	    }else{
		str=str.concat(' '.concat(arr[i]));
	    }
	    
	}
	return str;
    }
    return 'global'.concat(unwrapArr(arguments).concat(';\n'));
}
function matrixDeclaration(m) {
	var out='[';
	if (m[0].constructor==Array) {
		for (var i=0;i<m.length;i++) {
			for (var j=0;j<m[0].length;j++) {
	
				out+= m[i][j]+','
			}
			out=out.substr(0,out.length-1);
			out+=';\n';
			
		}
		out=out.substr(0,out.length-1);
		out+=']';
	}else{
		for (var i=0;i<m.length;i++) {
			out+= m[i]+','
		}
		out=out.substr(0,out.length-1)+'];';
	}


	return out;
}

function getParam(){
    function unwrapArr(arr){
	var str='';
	for (i in arr) {
	    if (arr[i] instanceof Array) {
		str=str.concat(unwrapArr(arr[i]))
	    }else{
		str=str+'\n'+arr[i]+'=getParam(\''+arr[i]+'\',x);';
	    }
	    
	}
	return str;
    }
    return unwrapArr(arguments);
}

function setAuxiliary(aux){
   
	var str='';
	for (var k in aux) {
		str=str.concat(k+'='+aux[k]+';\n');
	}

    return str.substr(0,str.length-1);
}




//function matlabODESolver(m){
//    var out = new modelPrintingScheme(m);
//    var indices=[];
//    var n=0;
//    for (k in m.states) {
//	n++;
//	indices[k]=n;
//    }
//    out.stateIdentifier=function(s){
//		return function(){
//			return 'y('+indices[s.name]+')';
//		}
//    };
//    out.name=function(){
//		return 'modelODE'+m.name
//    }
//    out.header=function(){
//		str='function ode = '+this.name()+'(ton,toff)\n'+globalDeclaration(m.globals().concat(['A']))+'\n\tA0=A;\n\tATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));\n\tfunction dy=model(t,y)\n';
//		str+='\t\t'+matlabSetAuxiliary(m).name()+'(y);\n\t\tdy=zeros('+n+',1);\n\t\tA=ATP(t);\n'
//		return str;
//    }
//    
//    out.footer=function(){
//		str='\n\tend\n\tode=@ model;\nend'
//		return str;
//    }
//    out.stateUpdateString=function(s){
//		return '\t\td'.concat(s.toString().concat('='.concat(s.derivativeString())).concat(';%'.concat(s.name)));
//    }
//    return out;
//}

function matlabODESolver(m){
    var out = new modelPrintingScheme(m);
    var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
    out.stateIdentifier=function(s){
		return function(){
			return 'y('+indices[s.name]+')';
		}
    };
    out.name=function(){
		return 'modelODE'+m.name
    }
    out.header=function(){
		if (m.heaviside!=undefined&&m.heaviside.indexOf('J')!=-1) {
			str='function ode = '+this.name()+'(ton,toff)\n'+globalDeclaration(m.globals().concat(['A','IVMon','IVMoff']))+'\n\tA0=A;\n\tJ0=J;\n\tATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));\n\tIVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));\n\tfunction dy=model(t,y)\n';
			str+='\t\t'+matlabSetAuxiliary(m).name()+'(y);\n\t\tdy=zeros('+n+',1);\n\t\tA=ATP(t);\n\t\tJ=IVM(t);\n'
		}else{
			str='function ode = '+this.name()+'(ton,toff)\n'+globalDeclaration(m.globals().concat(['A']))+'\n\tA0=A;\n\tATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));\n\tfunction dy=model(t,y)\n';
			str+='\t\t'+matlabSetAuxiliary(m).name()+'(y);\n\t\tdy=zeros('+n+',1);\n\t\tA=ATP(t);\n'
		}

		return str;
    }
    
    out.footer=function(){
		str='\n\tend\n\tode=@ model;\nend'
		return str;
    }
    out.stateUpdateString=function(s){
		return '\t\td'.concat(s.toString().concat('='.concat(s.derivativeString())).concat(';%'.concat(s.name)));
    }
    return out;
}

function matlabPulseODESolver(m){
    var out = new modelPrintingScheme(m);
    var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
    out.stateIdentifier=function(s){
		return function(){
			return 'y('+indices[s.name]+')';
		}
    };
    out.name=function(){
		return 'modelPulseODE'+m.name
    }
    out.header=function(){
		str='function ode = '+this.name()+'(ton,toff)\n'+globalDeclaration(m.globals().concat(['A0','J0','IVMon','IVMoff']))+'\n\tATP=@(t) 0;\n\tfor i=1:length(ton)\n\t\tATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));\n\tend;'
		+'\n\tIVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));\n\tfunction dy=model(t,y)\n';
		str+='\n\t\tdy=zeros('+n+',1);\n\t\tA=ATP(t);\n\t\tJ=IVM(t);\n'+'\t\t'+matlabSetAuxiliary(m).name()+'(y);\n';
		return str;
    }
    
    out.footer=function(){
		str='\n\tend\n\tode=@ model;\nend'
		return str;
    }
    out.stateUpdateString=function(s){
		return '\t\td'.concat(s.toString().concat('='.concat(s.derivativeString())).concat(';%'.concat(s.name)));
    }
    return out;
}



//non-standard FD integrator
function matlabFDIntegrator(m){
    var out = new modelPrintingScheme(m);
    var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
    out.stateIdentifier=function(s){
	return function(){
	    return 'Y(j,'+indices[s.name]+')';
	}
    };
    out.name=function(){
	return 'integrator'+m.name;
    }
    out.header=function(){

    return'function [T,Y] = '+this.name()+'(ton,toff,Ttot,amp,y0)\n'
	+globalDeclaration(m.globals())
	+('\n\tdt='+matlabGetFDTimeStep(m).name()+'(amp);\n\t%#codegen\n\tT=(0:dt:Ttot)\.\';nT=floor(Ttot)/dt;Y=zeros(nT,'+n+');Y(1,:)=y0;for j=1:nT-1').replace(/;/g,';\n\t')
	+'\n\t\tA=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));\n';
    }
    
    out.footer=function(){
	var str='\n\tend\nend'
	return str;
    }
    out.stateUpdateString=function(s){
	var nm = s.toString();
	return '\t\t'+nm.replace('j','j+1')+'=('+nm+'+dt*('+s.productionString()+'))/(1+dt*('+s.firstOrderDegradation().toString()+'));%'+s.name;
	//return '\t\t'.concat(s.toString().replace('Y(J','Y(J+1').concat('='.concat(s.derivativeString())));
    }
    return out;
}



//non-standard FD SSE integrator
function matlabFDErrorIntegrator(m){
    var out = new modelPrintingScheme(m);
    var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
    out.stateIdentifier=function(s){
	return function(){
	    return 'ycurr('+indices[s.name]+')';
	}
    };
    out.name=function(){
	return 'errorIntegrator'+m.name;
    }
    out.header=function(){

    return'function err = '+this.name()+'(ton,toff,Ttot,amp,y0,T,I,V)\n'
	+globalDeclaration(m.globals().concat(['Acell']))
	+('\n\tdt='+matlabGetFDTimeStep(m).name()+'(amp);\n\t%#codegen\n\tnT=min(Ttot,T(end))/dt;ycurr=y0;yup=zeros(size(y0));i=2;deltaTNext=abs(T(2)-dt);deltaT=abs(T(2));err=0;E=0;for j=1:nT-1').replace(/;/g,';\n\t')
	+'\n\t\tt=j*dt;\n\t\tA=amp*(heavi(t-ton)-heavi(t-toff));\n';
    }
    
    out.footer=function(){
	return '\n\n\t\tycurr=yup;deltaTPrev=deltaT;deltaT=deltaTNext;deltaTNext=abs(T(i)-(j+1)*dt);'.replace(/;/g,';\n\t\t')
			+'\n\t\tif deltaT<deltaTNext && deltaT<deltaTPrev'
			+'\n\t\t\terr=err+abs(Acell*'+m.current.toString()+'-I(i))^2;\n\t\t\ti=i+1;\n\t\t\tTcurr=T(i);\n\t\tend'
			+'\n\tend\nend'
    }
    out.stateUpdateString=function(s){
	var nm = s.toString();
	return '\t\t'+nm.replace('curr','up')+'=('+nm+'+dt*('+s.productionString()+'))/(1+dt*('+s.firstOrderDegradation().toString()+'));%'+s.name;
	//return '\t\t'.concat(s.toString().replace('Y(J','Y(J+1').concat('='.concat(s.derivativeString())));
    }
    return out;
}

//function matlabNaivePerfusionSSE(m) {
//	var out = new modelPrintingScheme(m);
//	var indices=[];
//    var n=0;
//    for (k in m.states) {
//	n++;
//	indices[k]=n;
//    }
//	out.name=function(){
//		return 'naivePerfusionSSE'+m.name;
//    }
//	out.header=function(){
//	   return'function err = '+this.name()+'(ton,toff,Ttot,T,I)\n'
//			 +'\t%#codgen;V=-60*10^-3;'.replace(/;/g,';\n\t');
//	}
//	
//	out.updates=function(){
//		return '\n\t[Tpred,Ipred]='+matlabNaivePerfusionResponse(m).name()+'(ton,toff,Ttot);\n';
//	}
//	
//	out.footer=function(){
//		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
//		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
//		
//		return '\n\tj=1;\n\terr=0;\n\t\n\tNpred=length(Tpred);\n\tfor i=1:length(T)\n\t\twhile(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))'
//				+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(i)-Ipred(j))^2;\n\tend\nend'
//	}
//	return out;
//}





function matlabNaivePerfusionSSE(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naivePerfusionSSE'+m.name;
    }
	out.header=function(){
	   return'function err = '+this.name()+'(ton,toff,Ttot,T,I)\n'
			 +'\t%#codgen;V=-60*10^-3;'.replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return '\n\t[Tpred,Ipred]='+matlabNaivePerfusionResponse(m).name()+'(ton,toff,Ttot);\n';
	}
	
	out.footer=function(){
		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
		
		return '\n\tNpred=length(Tpred);\n\terr=0;\n\tif ndims(T)==1\n\t\t\tj=1;\n\t\t\tfor i=1:length(T)\n\t\t\t\twhile(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))'
                +'\n\t\t\t\t\j=j+1;\n\t\t\tend\n\t\terr=err+abs(I(i)-Ipred(j))^2;\n\t\tend\n\telse\n\t\tk=1;\n\t\tfor i=1:size(T,2)\n\t\t\tfor j=1:size(T,1)'
                +'\n\t\t\t\twhile(k<Npred&&abs(Tpred(k+1)-T(j,i))<abs(Tpred(k)-T(j,i)))\n\t\t\t\tk=k+1;\n\t\t\t\tend\n\t\t\terr=err+abs(I(j,i)-Ipred(k))^2;'
                +'\n\t\tend\n\tend\n\terr=err/size(T,2);\n\tend\nend'
	}
	return out;
}


function matlabNaivePerfusionErrVec(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naivePerfusionErrVec'+m.name;
    }
	out.header=function(){
	   return'function err = '+this.name()+'(ton,toff,Ttot,T,I)\n'
			 +'\t%#codgen;V=-60*10^-3;'.replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return '\n\t[Tpred,Ipred]='+matlabNaivePerfusionResponse(m).name()+'(ton,toff,Ttot);\n';
	}
	
	out.footer=function(){
	
		return '\n\tNpred=length(Tpred);\n\terr=zeros(size(T));\n\tif ndims(T)==1\n\t\t\tj=1;\n\t\t\tfor i=1:length(T)\n\t\t\t\twhile(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))'
                +'\n\t\t\t\t\j=j+1;\n\t\t\tend\n\t\terr(i)=I(i)-Ipred(j);\n\t\tend\n\telse\n\t\tk=1;\n\t\tfor i=1:size(T,2)\n\t\t\tfor j=1:size(T,1)'
                +'\n\t\t\t\twhile(k<Npred&&abs(Tpred(k+1)-T(j,i))<abs(Tpred(k)-T(j,i)))\n\t\t\t\tk=k+1;\n\t\t\t\tend\n\t\t\terr(i)=I(j,i)-Ipred(k);'
                +'\n\t\tend\n\tend\n\terr=err/size(T,2);\n\tend\nend'
	}
	return out;
}

//function matlabNaivePerfusionVarSSE(m) {
//	var out = new modelPrintingScheme(m);
//	var indices=[];
//    var n=0;
//    for (k in m.states) {
//	n++;
//	indices[k]=n;
//    }
//	out.name=function(){
//		return 'naivePerfusionVarSSE'+m.name;
//    }
//	out.header=function(){
//	   return'function err = '+this.name()+'(ton,toff,Ttot,T,m,v)\n'
//			 +'\t%#codgen;V=-60*10^-3;'.replace(/;/g,';\n\t');
//	}
//	
//	out.updates=function(){
//		return '\n\t[Tpred,Ipred]='+matlabNaivePerfusionResponse(m).name()+'(ton,toff,Ttot);\n';
//	}
//	
//	out.footer=function(){
//		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
//		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
//		
//		return '\n\tv(v==0)=1;\n\tj=1;\n\terr=0;\n\t\n\tT=T(T<Ttot);\n\tNpred=length(Tpred);\n\tfor i=1:length(T)\n\t\twhile(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))'
//				+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+(abs((m(i)-Ipred(j)))^2)/(2*v(i));\n\tend\nend'
//	}
//	return out;
//}


//new flavor does not penalize activation phase
function matlabNaivePerfusionVarSSE(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naivePerfusionVarSSE'+m.name;
    }
	out.header=function(){
	   return'function err = '+this.name()+'(ton,toff,Ttot,T,m,v)\n'
			 +'\t%#codgen;V=-60*10^-3;'.replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return '\n\t[Tpred,Ipred]='+matlabNaivePerfusionResponse(m).name()+'(ton,toff,Ttot);\n';
	}
	
	out.footer=function(){
		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
		
		return '\n\tv(v==0)=1;\n\tj=1;\n\terr=0;\n\t\n\tT=T(T<Ttot);\n\tNpred=length(Tpred);\n\tfor i=1:length(T)\n\t\twhile(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))'
				+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+(abs((m(i)-Ipred(j)))^2)/(2*v(i));\n\tend\nend'
	}
	return out;
}


function matlabNaivePerfusionSSEIntegrator(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naivePerfusionSSEIntegrator'+m.name;
    }
	out.header=function(){
	   return'function err = '+this.name()+'(ton,toff,Ttot,amp,T,I)\n'
	   +('\t%#codgen;naive=getNaive'+m.name+'();V=-60*10^-3;').replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return '\n\terr='+matlabFDErrorIntegrator(m).name()+'(ton,toff,Ttot,amp,naive,T,I,V);\n';
	}
	
	out.footer=function(){
		return '\nend'
	}
	return out;
}

function matlabGetTotalCurrent(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
	out.name=function(){
		return 'getTotalCurrent'+m.name;
	}
    out.stateIdentifier=function(s){
		return function(){
			return 'Y(:,'+indices[s.name]+')';
		}
    };
	out.header=function(){
		return 'function I = '+this.name()+'(Y)\n'+globalDeclaration(m.globals().concat(['Acell','V']))
	}
	out.updates=function(){
		return '\n\tI = '+m.current.toString().replace(/\)\*/g,'\).\*').replace(/\^/g,'\.\^')+';';
	}
	out.footer=function(){
		return '\nend'
	}
	return out;
}

function matlabNaivePerfusionResponse(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
	
	out.name=function(){
		return 'naivePerfusionResponse'+m.name;
	}
	out.header=function(){
		if (m.hasSolution()) {
			str='function [t,I,Y]='+this.name()+'(ton,toff,Ttot)\n'+globalDeclaration(m.globals())
				+('\n\tdt=0.01;A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));\n\tt=0:dt:Ttot.\';Y=zeros(length(t),'+n+');').replace(/;/g,';\n\t');
				
			for (s in m.states) {
				str+='\n\tY(:,'+indices[s]+')='+m.states[s].solution+';\n\t'
			}
			return str;
				//code
		}else{
			return 'function [T,I,Y]='+this.name()+'(ton,toff,Ttot)'
				+('\n\tode='+matlabODESolver(m).name()+'(ton,toff);naive=getNaive'+m.name+'();'+matlabSetAuxiliary(m).name()+'(naive);[T,Y]=ode15s(ode,[0 Ttot],naive,odeset(\'NonNegative\',1:'+n+'));').replace(/;/g,';\n\t')
				
		}
		
	}
	
	out.updates=function(){
		
			return 'I='+matlabGetTotalCurrent(m).name()+'(Y);';
	
		
	}
	    
	out.footer=function(){
		return '\nend'
	}
       
    return out;
}

function matlabNaivePerfusionResponseIV(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
	
	out.name=function(){
		return 'naivePerfusionResponseIV'+m.name;
	}
	out.header=function(){
		if (m.hasSolution()) {
			str='function [t,I,Y]='+this.name()+'(ton,toff,Ttot)\n'+globalDeclaration(m.globals())
				+('\n\tdt=0.01;A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));\n\tt=0:dt:Ttot.\';Y=zeros(length(t),'+n+');').replace(/;/g,';\n\t');
				
			for (s in m.states) {
				str+='\n\tY(:,'+indices[s]+')='+m.states[s].solution+';\n\t'
			}
			return str;
				//code
		}else{
			return 'function [T,I,Y]='+this.name()+'(ton,toff,Ttot)'
				+('\n\tode='+matlabODESolver(m).name()+'(ton,toff);naive=getNaive'+m.name+'();'+matlabSetAuxiliary(m).name()+'(naive);[T,Y]=ode15s(ode,[0 Ttot],naive,odeset(\'NonNegative\',1:'+n+',\'MaxStep\',0.01));').replace(/;/g,';\n\t')
				
		}
		
	}
	
	out.updates=function(){
		
			return 'I='+matlabGetTotalCurrent(m).name()+'(Y);';
	
		
	}
	    
	out.footer=function(){
		return '\nend'
	}
       
    return out;
}

function matlabPerfusionResponse(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
	
	out.name=function(){
		return 'perfusionResponse'+m.name;
	}
	out.header=function(){
		if (m.hasSolution()) {
			str='function [t,I,Y]='+this.name()+'(y0,ton,toff,Ttot)\n'+globalDeclaration(m.globals())
				+('\n\tdt=0.01;A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));\n\tt=0:dt:Ttot.\';Y=zeros(length(t),'+n+');').replace(/;/g,';\n\t');
				
			for (s in m.states) {
				str+='\n\tY(:,'+indices[s]+')='+m.states[s].solution+';\n\t'
			}
			return str;
				//code
		}else{
			return 'function [T,I,Y]='+this.name()+'(y0,ton,toff,Ttot)'
				+('\n\tode='+matlabODESolver(m).name()+'(ton,toff);[T,Y]=ode15s(ode,[0 Ttot],y0,odeset(\'NonNegative\',1:'+n+'));').replace(/;/g,';\n\t')
				
		}
		
	}
	
	out.updates=function(){
		
			return 'I='+matlabGetTotalCurrent(m).name()+'(Y);';
	
		
	}
	    
	out.footer=function(){
		return '\nend'
	}
       
    return out;
}


//
//function matlabGetDegradationRates(m) {
//
//	function getDegradationRates(states){
//	    
//		    var str='';
//		    var s,terms;
//		    for (var i in states) {
//			str=str.concat(states[i].firstOrderDegradation().terms.join().concat(','));
//		    }
//		    
//    
//	    return '['+str.substring(0,str.length-1)+']';
//	}
//	
//	var out = new modelPrintingScheme(m);
//	
//	out.name=function(){
//		return 'getDegradationRates'+m.name;
//	}
//	
//	out.header=function(){
//		return 'function rates = '+this.name()+'(A)'
//	}
//	
//	out.updates=function(){
//		return '\n\t'+globalDeclaration(m.kineticParams)+'\n\trates='+getDegradationRates(m.states)+';';
//	}
//	
//	out.footer=function(){
//		return '\nend'
//	}
//	return out;
//}

function matlabGetFDTimeStep(m){
	var out = new modelPrintingScheme(m);
	
	out.name=function(){
		return 'getFDTimeStep'+m.name;
	}
	
	out.header=function(){
		return 'function dt = '+this.name()+'(A)'
	}
	
	out.updates=function(){
		return '\n\tdt=1/(10*max('+matlabGetDegradationRates(m).name()+'(A)));';
	}
	
	out.footer=function(){
		return '\nend'
	}
	return out
}

//function matlabCheckParameters(m) {
//	function preventZeros(){
//		var str='';
//		function unwrapArr(arr){
//			var str='';
//			for (i in arr) {
//				if (arr[i] instanceof Array) {
//					str=str.concat(unwrapArr(arr[i]))
//				}else{
//					str=str.concat((str.length>0?' || ':'')+arr[i]+'<0');
//				}
//				
//			}
//			return str;
//		}
//		return 'if '+unwrapArr(arguments)+'\n\t\tbool=0;\n\t\treturn\n\tend';
//	}
//	
//	var out = new modelPrintingScheme(m);
//	
//	out.name=function(){
//		return 'checkParams'+m.name;
//	}
//	
//	out.header=function(){
//		return 'function bool = '+this.name()+'()'
//	}
//	
//	out.updates=function(){
//		return '\n\t'+globalDeclaration(m.kineticParams)+'\n\tbool=1;\n\t'+preventZeros(m.kineticParams);
//	}
//	
//	out.footer=function(){
//		return '\nend'
//	}
//	return out;
//}

function matlabSetParameters(m) {
	var out = new modelPrintingScheme(m);
	
	out.name=function(){
		return 'setParams'+m.name;
	}
	
	out.header=function(){
		return 'function '+this.name()+'(x)'
	}
	out.updates=function(){
		return '\n'+globalDeclaration(m.globals())+(getParam(m.params)).replace(/\n/g,'\n\t')
	}
	out.footer=function(){
		return '\nend'
	}
	
	return out;
}

function matlabSetAuxiliary(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
	
	out.stateIdentifier=function(s){
		return function(){
			return 'Y('+indices[s.name]+')';
		}
    };
	
	
	out.name=function(){
		return 'setAuxiliary'+m.name;
	}
	
	out.header=function(){
		return 'function '+this.name()+'(Y)'
	}
	out.updates=function(){
		return '\n'+globalDeclaration(m.globals())+(setAuxiliary(m.aux)).replace(/\n/g,'\n\t')
	}
	out.footer=function(){
		return '\nend'
	}
	
	return out;
}

function matlabOverrideGlobals(m) {
	var out = new modelPrintingScheme(m);
	var overrides=[];
    var n=0;
    for (k in m.globalOverrides) {
		overrides.push(k);
    }
	

	
	out.name=function(){
		return 'overrideGlobals'+m.name;
	}
	
	out.header=function(){
		return 'function '+this.name()+'()'
	}
	out.updates=function(){
		return '\n'+globalDeclaration(m.globals().concat(overrides))+(setAuxiliary(m.globalOverrides)).replace(/\n/g,'\n\t')
	}
	out.footer=function(){
		return '\nend'
	}
	
	return out;
}

function matlabPlotNaiveResponse(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
	out.name=function(){
		return 'plotNaiveResponse'+m.name;
	}
    out.stateIdentifier=function(s){
		return function(){
			return 'Y(:,'+indices[s.name]+')';
		}
    };
	
	out.header=function(){
		return 'function h = '+this.name()+'(experiment)\n\t'
				+ 'setParams([]);[T, I, Y] = naivePerfusionResponse(experiment.conditions{:});subplot(2,1,1);h=plot(experiment.data(:,1),experiment.data(:,2),\'-r\');'.replace(/;/g,';\n\t')
				+ 'set(h,\'linewidth\',2);hold on;\th=plot(T,I);\tset(h,\'linewidth\',2);hold off;labelPlot(\'\',\'Current (pA)\',18);legend(\'Experimental\',\'Simulation\');subplot(2,1,2);'.replace(/;/g,';\n\t')
	}
	
	out.updates=function(){
		return '\n\tplot(T,['+m.opened.toString()+', '+m.dilated.toString()+']);'
				+'\n\tlegend(\'Open\',\'Dilated\');\n\tlabelPlot(\'Time (s)\',\'Fraction of Population\',18);'
	}
	
	out.footer=function(){
		return '\nend';
	}
	return out;
}


function matlabGetOpen(m) {
	var out = new modelPrintingScheme(m);
		var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
		
	out.stateIdentifier=function(s){
		return function(){
			return 'y(:,'+indices[s.name]+')';
		}
	}
	out.name=function(){
		return 'getOpen'+m.name;
	}

    
	
	out.header=function(){
		return 'function o='+this.name()+'(y)';
	}
	
	out.updates=function(){
		return '\n'+globalDeclaration(m.globals())+'\n\to='+m.opened.toString().replace(/\)\*/g,'\).\*').replace(/\^/g,'\.\^')+';';
	}
	
	out.footer=function(){
		return '\nend'
	}
	return out;
}

function matlabGetDilated(m) {
	var out = new modelPrintingScheme(m);
	var indices={};
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
		
	out.stateIdentifier=function(s){
		return function(){
			return 'y(:,'+indices[s.name]+')';
		}
	}
	out.name=function(){
		return 'getDilated'+m.name;
	}

    
	
	out.header=function(){
		return 'function d='+this.name()+'(y)';
	}
	
	out.updates=function(){
		return '\n\td='+m.dilated.toString().replace(/\)\*/g,'\).\*').replace(/\^/g,'\.\^')+';';
	}
	
	out.footer=function(){
		return '\nend'
	}
	return out;
}


//returns first order transition matrix
function matlabInfGenMatrix(m) {
	var out = new modelPrintingScheme(m);
	out.name=function(){
		return 'generatorMatrix'+m.name;
	}

    
	
	out.header=function(){
		return 'function '+this.name()+'()\n'+globalDeclaration(m.globals().concat(['Q']));
	}
	out.updates=function(){
		return '\nQ='+matrixDeclaration(m.Q())+';';
		//return '\n'+ matlabSetParameters(m).name()+'(x);\nQ='+matrixDeclaration(m.Q())+';';
	}
	out.footer=function(){return '\nend'}
	return out;
}



function matlabNaivePerfusionResponseExp(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naivePerfusionResponseExp'+m.name;
    }
	out.header=function(){
	   return'function [Tout,Isoln,Ysoln] = '+this.name()+'(ton,toff,Ttot,T)\n'
		+globalDeclaration(['ATP','A','p0','Tsoln','I','Y','imin','imax','t0'])
		+'\n\t%#codgen;\n\tif max(T)<Ttot\n\t\tdt=T(2)-T(1);\n\t\tTsoln=[T(1:end-1);(T(end):dt:Ttot).\'];\n\telse\n\t\tTsoln=T(T<=Ttot);\n\tend'
			+('\n\tNt=length(Tsoln);Tout=zeros(Nt,1);I=zeros(Nt,1);Isoln=zeros(Nt,1);Y=zeros(Nt,'+n+');Ysoln=zeros(Nt,'+n+');p0=zeros(1,'+n+');p0(1)=1;indBef=T<ton(1);Y(indBef,:)=repmat(p0,sum(indBef),1);ton=[ton,Ttot];').replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return'\n\tfor i=1:length(ton)-1'
		+'\n\t\tA=ATP;\n\t\tind=find(T>ton(i)&T<=toff(i));\n\t\timin=ind(1);\n\t\timax=ind(end);\n\t\tt0=ton(i);'
		+'\n\t\t'+matlabLinearODESolve(m).name()+'();'
		+'\n\t\tA=0;\n\t\tind=find(T>toff&T<=ton(i+1));\n\t\tif length(ind)~=0\n\t\t\timin=ind(1);\n\t\t\timax=ind(end);\n\t\t\tt0=toff(i);'
		+'\n\t\t\t'+matlabLinearODESolve(m).name()+'();\n\t\tend\n\tend';
	}
	
	
	out.footer=function(){
		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
		
		return '\n\n\tTout=Tsoln;\n\tIsoln=I;\n\tYsoln=Y;\nend'
	}
	return out;
}

function matlabLinearODESolve(m) {
	var out = new modelPrintingScheme(m);

    var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
    out.stateIdentifier=function(s){
	return function(){
	    return 'p0('+indices[s.name]+')';
	}
    };
    out.name=function(){
	return 'linearODESolve'+m.name;
    }
    out.header=function(){

    return'function  '+this.name()+'()\n'
	+globalDeclaration(m.globals().concat(['p0','Acell','Tsoln','I','Y','imin','imax','t0','Q']))
	+('\n\t%#codegen\n\t'+matlabInfGenMatrix(m).name()+'();').replace(/;/g,';\n\t')
	
    }
    
    out.footer=function(){
	return '\nend'
    }
    out.updates=function(){
		return '\n\tfor i=imin:imax\n\t\tp0=p0*expm(Q*(Tsoln(i)-t0));\n\t\tY(i,:)=p0;\n\t\tI(i)='+m.current.toString()+';\n\tend'
	}
    return out;
}

function matlabNaiveATPSSE(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naiveATPSSE'+m.name;
    }
	out.header=function(){
	   return'function error = '+this.name()+'(evt,T,I)\n'
			 +globalDeclaration(['A','p0','err'])
			 +('\n\t%#codgen;p0=zeros(1,'+n+');p0(1)=1;ton=[ton,Ttot];err=0;A0=A').replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return'for i=1:2:length(ton)-2\n\t\tindOn=T>evt(i)&T<=evt(i+1);\n\t\tindOff=T>evt(i+1)&T<=evt(i+2);'
		+'\n\t\tA=A0;\n\t\t'+matlabInfGenMatrix(m).name()+'();\n\t\t'+matlabLinearODESSE(m).name()+'(T(indOn)-evt(i),I(indOn));'
		+'\n\t\tA=0;\n\t\t'+matlabInfGenMatrix(m).name()+'();\n\t\t'+matlabLinearODESSE(m).name()+'(T(indOff)-evt(i-1),I(indOff));\n\tend';
	}
	
	out.footer=function(){
		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
		
		return '\n\terror=err;\nend'
	}
	return out;
}

function matlabNaivePulseSSE(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naiveATPSSE'+m.name;
    }
	out.header=function(){
	   return'function error = '+this.name()+'(evt,Qi,T,I)\n'
			 +globalDeclaration(['Q','p0','err'])
			 +('\n\t%#codgen;p0=zeros(1,'+n+');p0(1)=1;ton=[ton,Ttot];err=0;').replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return'for i=1:length(ton)-1\n\t\tind=T>evt(i)&T<=evt(i+1);'
		+'\n\t\tQ=Qi(:,:,i);\n\t\t'+matlabLinearODESSE(m).name()+'(T(indOn)-evt(i),I(indOn));'
		+'\n\tend';
	}
	
	out.footer=function(){
		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
		
		return '\n\terror=err;\nend'
	}
	return out;
}

function matlabNaivePerfusionSSEExp(m) {
	var out = new modelPrintingScheme(m);
	var indices=[];
    var n=0;
    for (k in m.states) {
	n++;
	indices[k]=n;
    }
	out.name=function(){
		return 'naivePerfusionSSEExp'+m.name;
    }
	out.header=function(){
	   return'function error = '+this.name()+'(ton,toff,Ttot,T,I)\n'
			 +globalDeclaration(['ATP','A','p0','err'])
			 +('\n\t%#codgen;p0=zeros(1,'+n+');p0(1)=1;ton=[ton,Ttot];err=0;').replace(/;/g,';\n\t');
	}
	
	out.updates=function(){
		return'for i=1:length(ton)-1\n\t\tindOn=T>ton(i)&T<=toff(i);\n\t\tindOff=T>toff(i)&T<=ton(i+1);'
		+'\n\t\tA=ATP;\n\t\t'+matlabLinearODESSE(m).name()+'(T(indOn)-ton(i),I(indOn));'
		+'\n\t\tA=0;\n\t\t'+matlabLinearODESSE(m).name()+'(T(indOff)-toff(i),I(indOff));\n\tend';
	}
	
	out.footer=function(){
		//return '\n\tj=1;\n\terr=0;\n\tfor i=1:length(Tpred)\n\t\twhile(T(j)<Tpred(i))'
		//		+'\n\t\t\tj=j+1;\n\t\tend\n\t\t\terr=err+abs(I(j)-Ipred(i))^2;\n\tend\nend';
		
		return '\n\terror=err;\nend'
	}
	return out;
}

function matlabLinearODESSE(m) {
	var out = new modelPrintingScheme(m);

    var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
    out.stateIdentifier=function(s){
	return function(){
	    return 'p0('+indices[s.name]+')';
	}
    };
    out.name=function(){
	return 'linearODESSE'+m.name;
    }
    out.header=function(){

    return'function '+this.name()+'(T,I)\n'
	+globalDeclaration(m.globals().concat(['Acell','p0','err','Q']))
	+('\n\t%#codegen\n\t\n\t'+matlabInfGenMatrix(m).name()+'();Nt=length(T);\n\t').replace(/;/g,';\n\t')
	
    }
    
    out.footer=function(){
	return '\nend'
    }
    out.updates=function(){
		return '\n\tfor i=1:Nt\n\t\tp0=p0*expm(Q*T(i));\n\t\terr=err+abs(Acell*'+m.current.toString()+'-I(i))^2;\n\tend'
	}
    return out;
}


function matlabGetWatchedStates(m) {
	var out = new modelPrintingScheme(m);
		var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
		
	out.stateIdentifier=function(s){
		return function(){
			return 'y(:,'+indices[s.name]+')';
		}
	}
	out.name=function(){
		return 'getWatchedStates'+m.name;
	}

    
	
	out.header=function(){
		return 'function s='+this.name()+'(y)';
	}
	
	out.updates=function(){
		var out = '\n\ts=['
		if (m.watched!=undefined) {
			for (var i in m.watched) {
				out+=m.watched[i].toString()+',';
			}
		}else{
			for (var i in m.states) {
				out+=m.states[i].toString()+',';
			}
		}
		out=out.slice(0,out.length-1);
		out+='];';
		return out;
	}
	
	out.footer=function(){
		return '\nend'
	}
	return out;
}



function matlabGetWatchedLabels(m) {
	var out = new modelPrintingScheme(m);
		var indices=[];
    var n=0;
    for (k in m.states) {
		n++;
		indices[k]=n;
    }
		
	out.stateIdentifier=function(s){
		return function(){
			return 'y(:,'+indices[s.name]+')';
		}
	}
	out.name=function(){
		return 'getWatchedLabels'+m.name;
	}

    
	
	out.header=function(){
		return 'function l='+this.name()+'()';
	}
	
	out.updates=function(){
		var out = '\n\tl=['
		var longest = 0;
		!function longestState(a) {
			if (a.constructor==Array) {
				for (var i in a) {
					if (a[i].name.length>longest) {
						longest=a[i].name.length;
					}
				}
			}else{
				for (var i in a) {
					if (i.length>longest) {
						longest=i.length;
					}
				}
			}

		}(m.watched||m.states)
		!function appendState(a) {
			if (a.constructor==Array) {
				for (var i in a) {
					out+='\''+a[i].name
					for (var j=a[i].name.length;j<longest;j++) {
						out+=' ';
					}
					out+='\';';
				}
			}else{
				for (var i in a) {
					out+='\''+i
					for (var j=i.length;j<longest;j++) {
						out+=' ';
					}
					out+='\';';
				}
				
			}

		}(m.watched||m.states)
		out=out.slice(0,out.length-1);
		out+='];';
		return out;
	}
	
	out.footer=function(){
		return '\nend'
	}
	return out;
}

function matlabGetNaive(m) {
    var out = new modelPrintingScheme(m);
    var indices=[],pop=[];
    var n=0;
    for (k in m.states) {
		pop[n]=0;
		n++;
		indices[k]=n;
	 
    }
    
    if (m.naive!=undefined) {
		//this is super dirty
		if (m.naive.name!=undefined) {
		    pop[indices[m.naive.name]-1]=1;
		}else{
			for (var s in m.naive) {
				pop[indices[s]-1]=m.naive[s];
			}
		}

    }else{
		pop[0]=1;
    }
    
    out.name=function(){
	return 'getNaive'+m.name;
    }
    out.header=function(){
	    return 'function y='+this.name()+'()\n'+globalDeclaration(m.globals().concat(['A']));
    }
    out.updates=function(){
		console.info('naive state array',pop)
	return '\n\ty='+matrixDeclaration(pop);
    }
    out.footer=function(){
	return '\nend';
    }
	return out;
}


function matlabGetParamTransitions(m) {
	var out = new modelPrintingScheme(m);
	
	out.name=function(){
		return 'getParamTransitions'+m.name;
	}
	
	out.header=function(){
		return 'function tr='+this.name()+'(p)\n\tswitch p\n'
	}
	
	out.updates=function(){
		var str='',p;
		for (var i=0;i<m.params.length;i++){
			p=m.params[i];
			str+='\tcase \''+p+'\'\n\t\ttr=\''+m.paramTransitions(p)+'\';\n';
		}
		return str+'\totherwise\n\t\ttr=\'-\';\n\tend\n';
	}
	
	out.footer=function(){
		return '\nend';
	}
	
	return out;
}

function matlabGetModel(m) {
	var out = new modelPrintingScheme(m);
	
	out.name=function(){
		return 'get'+m.name;
	}
	
	out.header=function(){
		return ''
	}
	
	out.updates=function(){
		str = m.name+'.getTotalCurrent=@ '+matlabGetTotalCurrent(m).name()
			+'\n'+m.name+'.name=\''+m.name+'\''
			+'\n'+m.name+'.ode=@ '+matlabODESolver(m).name()
			+'\n'+m.name+'.pulseODE=@ '+matlabPulseODESolver(m).name()
			+'\n'+m.name+'.perfusionResponse=@ '+matlabPerfusionResponse(m).name()
			+'\n'+m.name+'.naivePerfusionResponse=@ '+matlabNaivePerfusionResponse(m).name()
			+'\n'+m.name+'.naivePerfusionResponseIV=@ '+matlabNaivePerfusionResponseIV(m).name()
			+'\n'+m.name+'.naivePerfusionSSE=@ '+matlabNaivePerfusionSSE(m).name()
			+'\n'+m.name+'.naivePerfusionErrVec=@ '+matlabNaivePerfusionErrVec(m).name()
			+'\n'+m.name+'.naivePerfusionVarSSE=@ '+matlabNaivePerfusionVarSSE(m).name()
			+'\n'+m.name+'.naivePerfusionResponseExp=@ '+matlabNaivePerfusionResponse(m).name()
			+'\n'+m.name+'.naivePerfusionSSEExp=@ '+matlabNaivePerfusionSSE(m).name()
			+'\n'+m.name+'.naivePerfusionSSEIntegrator=@ '+matlabNaivePerfusionSSEIntegrator(m).name()
			+'\n'+m.name+'.setParams=@ '+matlabSetParameters(m).name()
			+'\n'+m.name+'.setAuxiliary=@ '+matlabSetAuxiliary(m).name()
			+'\n'+m.name+'.overrideGlobals=@ '+matlabOverrideGlobals(m).name()
			//+'\n'+m.name+'.checkParams=@ '+matlabCheckParameters(m).name()
			+'\n'+m.name+'.getOpen=@ '+matlabGetOpen(m).name()
			+'\n'+m.name+'.getDilated=@ '+matlabGetDilated(m).name()
			+'\n'+m.name+'.getWatchedStates=@ '+matlabGetWatchedStates(m).name()
			+'\n'+m.name+'.getInfGeneratorMatrix=@ '+matlabInfGenMatrix(m).name()
			+'\n'+m.name+'.getWatchedLabels=@ '+matlabGetWatchedLabels(m).name()
			+'\n'+m.name+'.naive=@ '+matlabGetNaive(m).name()
			+'\n'+m.name+'.getParamTransitions=@ '+matlabGetParamTransitions(m).name();

		return str.replace(/\n/g,';\n')+';'
	}
	
	out.footer=function(){
		return '\n\nsave(\''+m.name+'.mat\',\''+m.name+'\')'
	}
	return out;
}






module.exports.matlabODESolver=matlabODESolver;
module.exports.matlabPulseODESolver=matlabPulseODESolver;
//module.exports.matlabFDIntegrator=matlabFDIntegrator;
//module.exports.matlabFDErrorIntegrator=matlabFDErrorIntegrator;
module.exports.matlabGetTotalCurrent=matlabGetTotalCurrent;
module.exports.matlabNaivePerfusionSSEIntegrator=matlabNaivePerfusionSSEIntegrator;
module.exports.matlabNaivePerfusionSSE=matlabNaivePerfusionSSE;
module.exports.matlabNaivePerfusionErrVec=matlabNaivePerfusionErrVec;
module.exports.matlabNaivePerfusionVarSSE=matlabNaivePerfusionVarSSE;
module.exports.matlabNaivePerfusionResponse=matlabNaivePerfusionResponse;
module.exports.matlabNaivePerfusionResponseIV=matlabNaivePerfusionResponseIV;
module.exports.matlabPerfusionResponse=matlabPerfusionResponse;
//module.exports.matlabNaivePerfusionSSEExp=matlabNaivePerfusionSSEExp;
module.exports.matlabNaivePerfusionResponseEXp=matlabNaivePerfusionResponseExp;
//module.exports.matlabDataError=matlabDataError;//this has been made model independent
//module.exports.matlabGetFDTimeStep=matlabGetFDTimeStep;
//module.exports.matlabGetDegradationRates=matlabGetDegradationRates;
module.exports.matlabSetParameters=matlabSetParameters;
module.exports.matlabSetAuxiliary=matlabSetAuxiliary;
module.exports.matlabOverrideGlobals=matlabOverrideGlobals;
//module.exports.matlabCheckParameters=matlabCheckParameters;
module.exports.matlabPlotNaiveResponse=matlabPlotNaiveResponse;
module.exports.matlabGetOpen=matlabGetOpen
module.exports.matlabGetDilated=matlabGetDilated
module.exports.matlabGetNaive=matlabGetNaive
module.exports.matlabGetParamTransitions=matlabGetParamTransitions
module.exports.matlabGetWatchedStates=matlabGetWatchedStates
module.exports.matlabGetWatchedLabels=matlabGetWatchedLabels
module.exports.matlabGetModel=matlabGetModel;
module.exports.matlabInfGenMatrix=matlabInfGenMatrix;
module.exports.matlabLinearODESSE=matlabLinearODESSE
module.exports.matlabLinearODESolve=matlabLinearODESolve