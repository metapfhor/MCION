require('./texify.js');

function model(nm){
    this.name=nm
    this.states={};
	var indices={},Q=[],Nstates=0,names=[];
	Q.addTerm=function(i,j,t){
		if (Q[i][j]==undefined) {
			Q[i][j]=t;
		}else{
			Q[i][j]=plus(Q[i][j],t);
		}
	}
    this.addState=function(){
		if (arguments.length) {
			for(i in arguments){
			var s=arguments[i];
			if (s instanceof Array) {
				this.addState.apply(this,s);
			}else{
				if (!(s instanceof state)) {
					s=new state(s);
				}
				this.states[s.name]=s;
				Q[Nstates]=[];
				//Q[Nstates][Nstates]=1;
				names[Nstates]=s.name;
				indices[s.name]=Nstates++;
			}			
			}
		}
    }
    var params=[];
	this.params=params;
	var aux={};
	this.aux=aux;
    this.addParam=function(){
		if (arguments.length) {
			for(i in arguments){
				var p=arguments[i]
				if (p instanceof Array) {
					this.addParam.apply(this,p);
				}else{
					params.push(p);  
				}
			}
	    
		}
    }
	
	this.globals=function(){
		var out = params.slice();
		for (var k in aux) {
			out.push(k);
		}
		return out;
	}
	
	this.addAuxiliary=function(v,d){
		if (d==undefined) {
			for(var k in v){
				this.addAuxiliary(k,v[k])
			}	    
		}else{
			aux[v]=d;
		}
    }
	var globalOverrides={};
	this.addGlobalOverride=function(v,d){
		if (d==undefined) {
			for(var k in v){
				this.addGlobalOverride(k,v[k])
			}	    
		}else{
			globalOverrides[v]=d;
		}
    }
	this.globalOverrides=globalOverrides;
	
	this.hasSolution=function(){
		if (this.states.length) {//the most mysterious line in the world
			return false;//if your states are stuck in an array
		}//they most aboslutely cannot have a solution i guess
		for (var s in this.states) {//but maps are okay...sure
			if (this.states[s].solution==undefined) {
				return false;
			}
		}
		return true;
	}
	
	this.linkStates=function(s1,s2,kfor,kback) {
	var i=indices[s1.name];
	var j=indices[s2.name];
    if (i==undefined||j==undefined) {
		console.info('Model does not contain one of specified states!!')
		return;
	}
	if (kback==undefined) {
		s1.addDegradationTerm(kfor,1);
		//Q.addTerm(i,i,'-'+kfor);
		Q.addTerm(i,i,new minus('0',kfor))
		s2.addProductionTerm(times(kfor,s1),0);
		Q.addTerm(i,j,kfor);
    }else{
		s1.addDegradationTerm(kfor,1);
		//Q.addTerm(i,i,'-'+kfor);
		Q.addTerm(i,i,new minus('0',kfor));
		s1.addProductionTerm(times(kback,s2),0);
		Q.addTerm(j,i,kback);
		s2.addDegradationTerm(kback,1);
		//Q.addTerm(j,j,'-'+kback);
		Q.addTerm(j,j,new minus('0',kback));
		s2.addProductionTerm(times(kfor,s1),0);
		Q.addTerm(i,j,kfor);
    }

}
	
    this.Q=function(){
		//fill in empty entries
		for (var i=0;i<Nstates;i++) {
			for (var j=0;j<Nstates;j++) {
				if (Q[i][j]==undefined) {
					Q[i][j]=0;
				}
			}
		}
		str='';
		for (var i=0;i<Nstates;i++) {
			str+=names[i]+' : [';
			for (var j=0;j<Nstates;j++) {
				str+=Q[i][j]+',';
			}
			str=str.substr(0,str.length-1);
			str+=']\n';
		}
		console.info(str);
		return Q;
	}
	
	    this.J=function(){
		//fill in empty entries
		var J=[];
		var subs=arguments[0]

		for (var i=0;i<Nstates;i++) {
			J[i]=[];
			for (var j=0;j<Nstates;j++) {
				if (Q[j][i]==undefined) {
					J[i][j]=0;
				}else{
					if (subs!=undefined) {
						var tmp=Q[j][i];
						for (var k=0;k<subs.length;k++) {
							tmp=tmp.replace(subs[k].regexp,subs[k].sub);
						}
						J[i][j]=tmp
					}else{
						J[i][j]=Q[j][i];
					}
					
				}
			}
		}

		return J;
	}
	
	this.f=function(){
		var f=[],subs=arguments[0];
		for (var i=0;i<Nstates;i++) {
			if (subs!=undefined) {
				tmp=this.states[names[i]].derivative();
				for (var k=0;k<subs.length;k++) {
					tmp=tmp.replace(subs[k].regexp,subs[k].sub);
				}
				f.push(tmp)
			}else{
				f.push(this.states[names[i]].derivative());
			}
		}
		return f;
	}
	
	this.paramTransitions=function(p){
		var qij,set;
		from='';
		to='';
		for (var i=0;i<Nstates;i++) {
			for (var j=0;j<Nstates;j++) {
				if (i!=j&&(qij=Q[i][j])!=undefined) {
					var r=new RegExp('(^|[^0-9a-zA-Z])'+p+'([^0-9a-zA-Z]|$)+','g');
					if (p=='H3') {
						console.info(r,qij.toString().match(r),qij.toString())
					}
					
					if (qij.toString().match(r)!=null) {
						if (from.length) {
							set=true;
						}
						from+=names[i]+',';
						to+=names[j]+',';
						//console.info(i,j,names[i],'->',names[j],qij.toString());
					}
				}				
			}
		}
		if (set) {
			return '{'+from.slice(0,-1)+'}->{'+to.slice(0,-1)+'}';
		}else{
			if (from.length) {
				return from.slice(0,-1)+'->'+to.slice(0,-1);
			}else{
				return '';
			}
			
		}
		
		
	}
}

function state(nm) {
    this.name=nm;
    var degradation = [];
    var production = [];
    this.addDegradationTerm=function(func,order){
		addTerm(degradation,func,order);
    }
    
    this.addProductionTerm=function(func,order){
		addTerm(production,func,order);
	
    }
    
    function addTerm(arr,func,order) {
		if (arguments.length==2) {
			order=0;
		}
		if (arr[order]==undefined) {
			arr[order]=new series();
		}
		arr[order].addTerm(func);
    }
    
    this.toString=function(){
		return this.name;
    }
    
    this.derivativeString =function(){
		if (this.isProduced()) {
			if (this.isDegraded()) {
				return this.productionString().concat('-'.concat(this.degradationString('-')));
			}else{
				return this.productionString()
			}
		}else{
			if (this.isDegraded()) {
				return '-'.concat(this.degradationString('-'));
			}else{
				return '0';
			}
		}
	
    }
    
    this.productionString=function(){
	return this.productionSeries().toString();
    }
    
    this.degradationString=function(sep){
	return this.degradationSeries().toString(sep);
    }
    
    sumOrderedSeries=function(arr){//takes an array of terms indexed by their order and spits out the sum of all orders
		var sum=new series();
		if (arr.length>0) {
			for (var i in arr) {
			t=arr[i]
			if (t!=undefined) {
				if (i>0) {
				if(i>1){
					sum.addTerm(new times(t,new power(this,i)));
				}else{
					sum.addTerm(new times(t,this))
				}
				
				}else{
				sum.addTerm(t);
				}
			}
			}
		}
		return sum;  
    }
    
    this.isProduced=function(){
		return production.length>0;
    }
    
    this.isDegraded=function(){
		return degradation.length>0;
    }
    
    this.productionSeries=function(){
	if (this.isProduced()) {
	    return sumOrderedSeries.bind(this)(production);
	}else{
	    return new series();
	}
    }
	this.production=production;
    
    this.degradationSeries=function(){
	if (this.isDegraded()) {
	    return sumOrderedSeries.bind(this)(degradation);
	}else{
	    return new series();
	}
    }
	this.derivative=function(){return minus(this.productionSeries(),this.degradationSeries())}
	this.degradation=degradation;
    
    this.firstOrderDegradation=function(){
	return degradation[1] || new series();
    }
    
}
function algebra() {
	this.replace=function(u,v){
		var out=new this.constructor();
		//console.info('ALgebra replacement fcn has been called',this.terms,u,v)
		if (this.terms!=undefined) {
			var t
			for (var i=0;i<this.terms.length;i++) {
				t=this.terms[i]
				if ((t instanceof state) && t==u) {
					out.terms.push(v)
				}else{
					if (t instanceof algebra) {
						out.terms.push(t.replace(u,v));
					}else{
						if (t.replace!=undefined) {
							out.terms.push(t.replace(u,v));
						}else{
							out.terms.push(t);
						}
						
					}
				}
			}
		}
		//console.info('Replacement',out.terms)
		return out;
	}
	this.replaceString=function(o,p){
		var out=new this.constructor();
		if (this.terms!=undefined) {
			var t
			for (var i=0;i<this.terms.length;i++) {
				t=this.terms[i];
				if (t instanceof algebra) {
					out.terms.push(t.replaceString(o,p));
				}else{
					if (t.replace) {
						out.terms.push(t.replace(o,p));
					}else{
						out.terms.push(t);
					}
					
				}

			}
		}
		return out;
	}
}



function series(){
    var terms=[];
    this.terms=terms;
    this.addTerm=function(a){
	terms[terms.length]=a;
    }
    this.toString=function(sep){

	if (sep==undefined) {
	    sep='+'
	}
	
	//console.info(sep)
	var str,add;
	var nt=terms.length;
	//if (sep=='+'&&terms[0].constructor==minus) {
	//	console.info('here we are')
	//}
	if (nt>=1) {
		t=terms[0];
		if(t instanceof series){
			add=t.toString();
		}else{
			add=t.toString();
		}
		
		if (add!="0") {
			str=add;
		}else{
			str='';
		}
		

	    
	    for (var i=1;i<nt;i++) {
			t=terms[i];
			if(t instanceof series){
				add=t.toString(sep);
			}else{
				add=t.toString();
			}
			if (add!="0") {
				if (str==''&&sep=='+') {
					
					str=add;
				}else{
					if (add.charAt(0)=='-') {
						if (sep=='-') {
							add[0]='+'
						}
						str=str.concat(add);
					}else{
						str=str.concat(sep.concat(add));
					}
					
				}
				
			}
	    }
	}
	if (str=='') {
		str='0';
	}
	//if (sep=='+'&&terms[0].constructor==minus) {
	//	console.info(str)
	//}
	return str;
    }
    this.hasMultipleTerms=function(){
	return terms.length>1;
    }
}

series.prototype=new algebra();
series.prototype.constructor=series;

function product(){
    var terms=[];
	this.terms=terms;
    this.addTerm=function(a){
		terms[terms.length]=a;
    }
    this.toString=function(sep){
		if (sep==undefined) {
			sep='*'
		}
		var nt=terms.length;
		//console.info('Separator',sep)
		if (nt!=0) {
			t=terms[0];
			var prod,str;
			prod=t.toString();
			if (t instanceof series && t.hasMultipleTerms()) {

				if (prod!='0') {
					str='('.concat(prod.concat(')'));
				}else{
					return '0';
				}
				
			}else{
				//console.info('first term',prod,terms)
				if (prod=='0') {
					return '0';
				}else{
					str=prod;
				}
			}
			
			for(var i=1;i<nt;i++){
			var t=terms[i];
			prod=t.toString();

			if (prod!='0') {
				//console.info('adding term to product string',prod)
				if (t instanceof series && t.hasMultipleTerms()) {
					str=str.concat(sep.concat('(').concat(prod.concat(')')))
				}else{
					str=str.concat(sep.concat(prod));
				}
			}else{
				//console.info('Secondly!!!!!',terms)
				return '0';
			}
	
			}
			return str;
		}else{
			
			return '0';
		}
    }
}

product.prototype=new algebra();
product.prototype.constructor=product;

function power(base,pow) {
	

    this.base=base;
    this.pow=pow;
    this.toString=function(){
		if (pow==0) {
			return '1';
		}else if (pow==1) {
			return base.toString();
		}else{
			if (base instanceof product||(base instanceof series && base.hasMultipleTerms())) {
				return '('+base.toString()+')'.concat('^'.concat(pow.toString()));
			}else{
				return base.toString().concat('^'.concat(pow.toString()));
			}
			
		}
    }
}



function plus() {
    var sum=new series();
	for(i in arguments){
		sum.addTerm(arguments[i]);
    }
    return sum;
}
function minus() {
    var dif=new series();
	dif.constructor=minus;
	for(i in arguments){
		dif.addTerm(arguments[i]);
    }
	var str = dif.toString;
	dif.toString=function(){
		return str('-');
	}
    return dif;
}

function times() {
    var prod=new product();
    for(i in arguments){
		prod.addTerm(arguments[i]);
    }
    return prod;
}

function divide() {
    var quot=new product();
	quot.constructor=divide
	for(i in arguments){
		quot.addTerm(arguments[i]);
    }
	var str = quot.toString;
	quot.toString=function(){
		return str('/');
	}
    return quot;
}

function linkStates(s1,s2,kfor,kback) {
    if (kback==undefined) {
	
	s1.addDegradationTerm(kfor,1);
	s2.addProductionTerm(times(kfor,s1),0);
	
    }else{
	
	s1.addDegradationTerm(kfor,1);
	s1.addProductionTerm(times(kback,s2),0);
	
	s2.addDegradationTerm(kback,1);
	s2.addProductionTerm(times(kfor,s1),0);
    }

}



function parameter(nm){
    out={};
    name=nm;
    out.toString=function(){
	return name;
    }
    return out;
}



module.exports.model=model;
module.exports.state=state;
module.exports.algebra=algebra;
module.exports.series=series;
module.exports.product=product;
module.exports.power=power;
module.exports.plus=plus;
module.exports.minus=minus;
module.exports.times=times;
module.exports.linkStates=linkStates;
module.exports.divide=divide;