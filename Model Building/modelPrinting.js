function modelPrintingScheme(m) {
    var states=m.states;
    var oldStrings=new Array(m.states.length);
    
    function localizeIdentifiers() {
	for(var k in states){
	    var s=states[k];
	    oldStrings[s.name]=s.toString;
	    s.toString=this.stateIdentifier(s);
	}
    }
    function restoreIdentifiers() {
	for(var k in states){
	    var s=states[k];
	    s.toString=oldStrings[s.name];
	}
    }
    function evalLocal(f){
	localizeIdentifiers.apply(this);
	str=f.apply(this);
	restoreIdentifiers.apply(this);
	return str;
    }
    
    this.stateIdentifier=function(s){
	return function(){
	   return s.name; 
	}
    }
    
    this.stateUpdateString=function(s){
	return s.toString().concat('\'='.concat(s.derivativeString()));
    }

    this.name=function(){
	return m.name;
    }

    this.header=function(){
	return '';
    }
    this.updates=function(){
	str=''
	s=0;
	for(var k in states){
	    s++;
	    str=str.concat((s>1?'\n':'').concat(this.stateUpdateString(states[k])));
	}
	return str;
    }
    this.footer=function(){
	return '';
    }
    this.headerString=function(){
	return evalLocal.bind(this)(this.header);
    }
    this.updateString=function(){
	return evalLocal.bind(this)(this.updates);
    }
    this.footerString=function(){
	return evalLocal.bind(this)(this.footer);
    }

    this.toString=function(){
	return this.headerString().concat(this.updateString().concat(this.footerString()));
    }
}

module.exports.modelPrintingScheme=modelPrintingScheme;
