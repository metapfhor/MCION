printing=require('./modelPrinting.js');



function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}

makeGlobal(printing);



//need to add checks to indent everything and split lines into 80/132 char continuation chunks

String.prototype.replaceAll=function(subs){
	var out=this;
	for (var i=0;i<subs.length;i++) {
		out=out.replace(subs[i].regexp,subs[i].sub);
	}
	return out;
}

ftranString=function(){
	return this
}

function fortranPrintingScheme(m) {
	var out=new modelPrintingScheme(m);
	out.builder=new ftranBuilder();
	out.toString=out.builder.body;
	return out;
}

function ftranModuleBuilder(nm) {
	var out=new ftranBuilder();
    out.addWord('module '+nm);
	out.newLine();
	out.end=function(){
		out.addLine('save');
		out.addLine('end module '+nm);
	}
	return out;
}

function ftranFuncBuilder(nm,type) {
    var out=new ftranBuilder();
    out.addWord(type+' function '+nm+'(');

    for(var i=2;i<arguments.length;i++){
	out.addListItem(arguments[i]);
    }
    
    out.finishList(')')
	out.newLine();
	out.end=function(){
		out.addLine('end function '+nm);
	}

    return out;
}

function ftranSubBuilder(nm) {
    var out=new ftranBuilder();
    out.addWord('subroutine '+nm+'(');

    for(var i=1;i<arguments.length;i++){
	out.addListItem(arguments[i]);
    }
    
    out.finishList(')')
	out.newLine();
	out.end=function(){
		out.addLine('end subroutine '+nm);
	}

    return out;
}

function ftranProgramBuilder(nm) {
    var out=new ftranBuilder();
    out.addWord('program '+nm);
	out.newLine();
	out.end=function(){
		out.addLine('end program '+nm);
	}

    return out;
}

function ftranQuirk(str) {
	if (str.constructor==Number) {
		return str;
	}
	if (str.toString()=='true') {
		return '.true.'
	}
	if (str.toString()=='false') {
		return '.false.';
	}
	var quirks=[];
	quirks.push({exp:new RegExp('\\^','g'),sub:'**'})
	var out=str;
	for (var i in quirks) {
		out=out.replace(quirks[i].exp,quirks[i].sub)
	}
	return out;
}

function ftranBuilder(){
    var body='';
    var  maxchar=132;
    var indent='      ';
    var cont='     &';
    var line=indent;
    this.addWord=function(wrd){
	//this function should only really be used to start lines off;
	line+=wrd
    }
    this.addLine=function(){
		var l;
	if (arguments.length) {
		l=ftranQuirk(arguments[0]);
	}else{
		l=''
	}
	if (line!=indent) {
	    this.newLine();
	}
	line=indent+l;
	this.newLine();
    }
    
    this.addListItem=function(){
	var itm=ftranQuirk(arguments[0]);
	//is this the first item in a list?
	var lastChar=line.charAt(line.length-1);
	if (lastChar=='/'||lastChar=='('||line.slice(-3)==':: ') {
	    pre='';
	}else{
	    pre=',';
	}
	//is the line going to be too long?
	if (itm.length+pre.length+line.length>maxchar) {
	    this.newLine();
	    line=cont+pre+itm;
	}else{
	    line+=pre+itm;
	}
    }
    this.finishList=function(end){
	if (line.length+end.length>maxchar) {
	    //we must go back to last item in list and move it to the next line
	    var lastComma=line.lastIndexOf(',');
	    var lastItem=line.substr(lastComma);
	    line=line.substring(0,lastComma);
	    this.newLine();
	    line=cont+lastItem+end;

	}else{
	    line+=end;

	}
    }
    this.newLine=function(){
	body+=line+'\n';
	line=indent;
    }
    
    this.body=function(){
	if (arguments.length){
	    var out=body;
	    body=arguments[0];
	    return out;
	}else{
	    return body;
	}
    };
    this.matrixDeclaration=function(m,nm){
	var elm;
	this.newLine();
	for (var j=0;j<m[0].length;j++) {
	    this.addWord(nm+'(:,'+(j+1)+')=(/')
	    for (var i=0;i<m.length;i++) {
		elm=m[i][j].toString();
		if (elm=="0") {
		    elm="0.D0"
		}
		this.addListItem(elm)
	    }
	    this.finishList('/)');
	    this.newLine();
	}
    }
	this.matrixDeclaration=function(m,nm){
		var elm;
		this.addWord(nm+'=reshape((/')
		for (var j=0;j<m[0].length;j++) {
			
			for (var i=0;i<m.length;i++) {
			elm=m[i][j].toString();
			//if (i==0&&j==0) {
			//	console.info('First diagonal',m[i][j])
			//}
			if (elm=="0") {
				elm="0.D0"
			}
			this.addListItem(elm)
			}
	
		}
		
			this.finishList('/)');
			this.addListItem('(/');
			this.addListItem(m.length);
			this.addListItem(m[0].length);
			this.finishList('/))');
    }
	
	this.arrayDeclaration=function(a,nm){
	var elm;
	this.addWord(nm+'=(/')

		
		for (var i=0;i<a.length;i++) {
		elm=a[i].toString();
		//if (i==0&&j==0) {
		//	console.info('First diagonal',m[i][j])
		//}
		if (elm=="0") {
			elm="0.D0"
		}
		this.addListItem(elm)
		}

	
	
		this.finishList('/)');
	}
	this.blockDeclaration=function(dec,list){
		this.addWord(dec+' :: ');
		for (var i in list) {
			this.addListItem(list[i]);
		}
		this.newLine();
	}
	this.use=function(nm){
		this.addLine('use '+nm);
	}
	this.addCall=function(){
		this.newLine();
		this.addWord('call '+arguments[0]+'(');
		for (var i=1;i<arguments.length;i++) {
			this.addListItem(arguments[i]);
		}
		this.finishList(')')
	}
}


//
////returns first order transition matrix
//function fortranJacobian(m) {
//	var out = new fortranPrintingScheme(m);
//	var out={};
//	out.name=function(){
//		return 'jeval';
//	}
//	
//	out.builder=ftranSubBuilder(out.name(),'ldim','neqn','t','y','yprime','dfdy','ierr','rpar','ipar');
//	var bld=out.builder;
//	bld.addLine('use model_params');
//	bld.addLine('integer ldim,neqn,ierr,ipar(*)');
//	bld.addLine('double precision t,y(neqn),yprime(neqn),dfdy(ldim,neqn),rpar(*)');
//	
//	bld.matrixDeclaration(m.J(),'dfdy');
//	
//	bld.end();
//
//	out.toString=out.builder.body;
//console.info(bld.body())
//	return out;
//}

//returns first order transition matrix

function fortranParamParser(m) {
	var out='';
	var model_p=new ftranModuleBuilder('model_params');
	model_p.blockDeclaration('double precision',m.params);
	model_p.end();
	out+=model_p.body();
	var pulse_par=new ftranModuleBuilder('pulse_pararams');
	pulse_par.blockDeclaration('double precision',['ttot','nextDisc','prevDisc=0']);
	var on=[]
	var ondec=[];
	var inds=[];
	var indsdec=[];
	var ts=[];
	var ns=[];
	var ps=[];
	var rhs=[];
	var jac=[];
	var bmask=[];
	var nm;
	var Nheavi=0;
	if (m.heaviside!=undefined) {
		for (var i=0;i<m.heaviside.length;i++) {
			nm=m.heaviside[i].toLowerCase(); 
			on.push(nm);
			ondec.push(nm+'on=.false.')
			inds.push('i'+nm);
			indsdec.push('i'+nm+'=1');
			ts.push('t'+nm);
			ns.push('n'+nm);
			ps.push('p'+nm);
			Nheavi++;
		}
		pulse_par.blockDeclaration('logical',ondec);
		pulse_par.blockDeclaration('integer',indsdec);
		pulse_par.blockDeclaration('integer',ns);
		pulse_par.blockDeclaration('double precision, dimension(:), allocatable',ts);
		pulse_par.blockDeclaration('double precision, dimension(:), allocatable',ps);
		
		baseName='b'+m.heaviside.join('');
		baseFName='f'+m.heaviside.join('');
		baseJName='j'+m.heaviside.join('');
		masks=boolPerm(Nheavi);
		for (var i=0;i<masks.length;i++) {
			subs=[];
			for (var j=0;j<Nheavi;j++) {
				if (masks[i][j]==false) {
					subs.push({regexp:new RegExp(m.heaviside[j],'g'),sub:'0'});
				}
			}
			pulse_par.addWord('logical :: ');
			bmask.push(baseName.replaceAll(subs))
			pulse_par.arrayDeclaration(masks[i],baseName.replaceAll(subs));
			pulse_par.newLine();
			rhs.push(baseFName.replaceAll(subs));
			jac.push(baseJName.replaceAll(subs));
		}
	}
	pulse_par.end();
	
	out+='\n'+pulse_par.body();
	
	argReader=new ftranProgramBuilder('argInput')
	argReader.use('model_params');
	argReader.use('pulse_pararams');
	argReader.blockDeclaration('character*1024',['arg','nextarg']);
	argReader.blockDeclaration('integer',['commas','as','narg']);
	argReader.newLine();
	argReader.addLine('narg = IARGC() ');
	argReader.addLine('do i=1,narg,2');
	argReader.addLine('call getarg(i,arg)')
	argReader.addLine('if (i.lt.narg) then')
	argReader.addLine('call getarg(i+1,nextArg)')
	argReader.addLine('endif')
	argReader.newLine();
	argReader.addLine('select case(arg)');
	
	for (var i=0;i<m.params.length;i++) {
		nm=m.params[i];
		argReader.addLine('case(\''+nm+'\')');
		argReader.addLine('\tread(nextarg,*)'+nm);
	}
	
	if (m.heaviside!=undefined) {
		for (var i=0;i<m.heaviside.length;i++) {

			argReader.addLine('case(\''+m.heaviside[i]+'pulse\')');
			argReader.addLine('\t'+ns[i]+'=commas(nextarg)+1');
			argReader.addLine('\tallocate('+ts[i]+'('+ns[i]+'),stat=as');
			argReader.addLine('\tif (as /= 0) STOP \"*** Not enough memory ***\"');
			argReader.addLine('\tread(nextarg,*)'+ts[i]);
			argReader.addLine('\tallocate('+ps[i]+'('+ns[i]+'+1),stat=as');
			argReader.addLine('\tif (as /= 0) STOP \"*** Not enough memory ***\"');
			argReader.addLine('\t'+ps[i]+'(1:'+ns[i]+')='+ts[i]);			
		}
	}

	argReader.addLine('case(\'T\')')
	argReader.addLine('\tread(nextarg,*)ttot');
	argReader.addLine('case default')
	argReader.addLine('end select')
	argReader.newLine();
	argReader.addLine('end do');
	argReader.newLine();
	
		
	if (m.heaviside!=undefined) {
		for (var i=0;i<m.heaviside.length;i++) {
			argReader.addLine(ps[i]+'('+ns[i]+'+1)=tot');
		}
	}
	
	argReader.newLine();
	argReader.addLine('call pulse_parrotocol_runner()')
	argReader.newLine();
	argReader.end();
	
	out+='\n'+argReader.body();
	
	var pulseRunner=new ftranSubBuilder('pulse_parrotocol_runner');
	pulseRunner.blockDeclaration('logical',['pulse_step']);
	pulseRunner.addLine('do while\(pulse_step\(\)\)');
	pulseRunner.addLine('enddo')
	pulseRunner.end();
	
	out+='\n'+pulseRunner.body();
	
	integrate=new ftranFuncBuilder('pulse_step_intregrate','logical','f','j');
	integrate.use('pulse_pararams');
	integrate.use('radau_params');
	integrate.blockDeclaration('double precision',['tNext('+(Nheavi+1)+')'])
	integrate.blockDeclaration('external',['f','j'])
	integrate.blockDeclaration('integer',['nextPar']);
	
	integrate.addWord('tNext=(/');
	if (m.heaviside!=undefined) {
		for (var i=0;i<m.heaviside.length;i++) {
			integrate.addListItem(ts[i]+'\('+inds[i]+'\)');
		}
	}
	integrate.addListItem('ttot');
	integrate.finishList('/)')
	integrate.addLine();
	integrate.addLine('nextDisc=minval(tNext)');
	integrate.addLine('nextPar=minloc(tNext,1)');
	integrate.addLine();
	integrate.addCall('radau','neqn','f','prevDisc','ic','nextDisc','h0','rtol','atol',0,'j','1','neqn','neqn','sol','1','work','lwork','iwork','liwork','rpar','ipar')
	integrate.addLine();
	integrate.addLine('prevDisc=nextDisc');
	integrate.addLine();
	integrate.addLine('pulse_integrate=.true.');
	integrate.addLine();
	integrate.addLine('select case(nextPar)')
	for (var i=0;i<Nheavi;i++) {
		integrate.addLine('case('+i+')')
		integrate.addLine('   '+on[i]+'on=.true.')
		integrate.addLine('   i'+on[i]+'=i'+on[i]+'+1');
	}
	integrate.addLine('case('+(Nheavi+1)+')')
	for (var i=0;i<Nheavi;i++) {
		integrate.addLine('   '+on[i]+'on=.false.')
		integrate.addLine('   i'+on[i]+'=0');
	}
	integrate.addLine('end select')


	integrate.end();
		
	out+='\n'+integrate.body();


	var pulseStep=new ftranSubBuilder('pulse_step');
	pulseStep.use('pulse_params');
	if (m.heaviside!=undefined) {
		pulseStep.blockDeclaration('external',rhs);
		pulseStep.blockDeclaration('external',jac);
		pulseStep.blockDeclaration('logical('+Nheavi+')',['pulseState']);
		pulseStep.newLine();
		var heavb=[];
		for (var i=0;i<Nheavi;i++) {
			heavb.push(on[i]+'on')
		}
		pulseStep.arrayDeclaration(heavb,'pulseState')
		pulseStep.newLine();

		
		baseName='b'+m.heaviside.join('');
		baseFName='f'+m.heaviside.join('');
		baseJName='j'+m.heaviside.join('');
		masks=boolPerm(Nheavi);

		pulseStep.addLine('if (ALL(pulseState.eq.'+bmask[0]+')) then')
		pulseStep.addLine('\tpulse_step=pulse_integrate('+rhs[0]+','+jac[0]+')');
		for (var i=1;i<Nheavi;i++) {
			pulseStep.addLine('else if (ALL(pulseState.eq.'+bmask[i]+')) then')
			pulseStep.addLine('\tpulse_step=pulse_integrate('+rhs[i]+','+jac[i]+')');
		}
		pulse.addLine('endif')
	}else{
		
	}
	
	pulseStep.end();
	out+='\n'+pulseStep.body();
	
	
	this.toString=function(){return out;}
	this.name=function(){return 'argInput';}
	
}

function fortranJacobian(J,nm) {
	var out = new fortranPrintingScheme(m);
	var out={};
	out.name=function(){
		return nm;
	}
	
	out.builder=ftranSubBuilder(nm,'ldim','neqn','t','y','yprime','dfdy','ierr','rpar','ipar');
	var bld=out.builder;
	bld.addLine('use model_params');
	bld.addLine('integer ldim,neqn,ierr,ipar(*)');
	bld.addLine('double precision t,y(neqn),yprime(neqn),dfdy(ldim,neqn),rpar(*)');
	var args=Array.prototype.slice.call(arguments);
	bld.matrixDeclaration(J,'dfdy');
	
	bld.end();

	out.toString=out.builder.body;
//console.info(bld.body())
	return out;
}

function heavisideJacobians(m) {
	this.name=function(){return 'jeval'}
		var out='';
	if (m.heaviside!=undefined) {

		var heav = m.heaviside
		var n=m.heaviside.length;

		var J, nm, baseName,subs;
		baseName='j'+heav.join('');

		masks=boolPerm(n);
		for (var i=0;i<masks.length;i++) {
			subs=[];
			for (var j=0;j<n;j++) {
				if (masks[i][j]==false) {
					subs.push({regexp:new RegExp(heav[j],'g'),sub:'0'});
				}
			}
			name=baseName.replaceAll(subs);
			J=m.J(subs);
			out+=fortranJacobian(J,name).toString()+'\n\n';
		}
	}else{
		out+=fortranJacobian(m.J(),'jeval').toString()+'\n\n';
	}
	this.toString=function(){return out}
}

function heavisideRHS(m) {
	function fortranRHS(f,nm) {
		var out = new fortranPrintingScheme(m);
		var out={};
		out.name=function(){
			return nm;
		}
		
		out.builder=ftranSubBuilder(nm,'neqn','t','y','yprime','f','ierr','rpar','ipar');
		var bld=out.builder;
		bld.addLine('use model_params');
		bld.addLine('integer neqn,ierr,ipar(*)');
		bld.addLine('double precision t,y(neqn),yprime(neqn),f(neqn),rpar(*)');
		var args=Array.prototype.slice.call(arguments);
		bld.arrayDeclaration(f,'f');
		
		bld.end();
	
		out.toString=out.builder.body;
		return out;
	}
	
	this.name=function(){return 'feval'}
		var out='';
	if (m.heaviside!=undefined) {
		var n=0,oldStrings=[];
		var indices={};
		for (var s in m.states) {
			n++;
			indices[s]=n;
			oldStrings.push(m.states[s].toString);
			m.states[s].toString=function(){ return 'y('+indices[this.name]+')'};
		}
		var heav = m.heaviside
		var n=m.heaviside.length;

		var f, nm, baseName,subs;
		baseName='f'+heav.join('');

		
		
		masks=boolPerm(n);
		for (var i=0;i<masks.length;i++) {
			subs=[];
			
			for (var j=0;j<n;j++) {
				if (masks[i][j]==false) {
					subs.push({regexp:new RegExp(heav[j],'g'),sub:'0'});
				}
			}
			name=baseName.replaceAll(subs);
			f=m.f(subs);
			out+=fortranRHS(f,name).toString()+'\n\n';
		}
		Nstates=0;
		for (var s in m.states) {
			m.states[s].toString=oldStrings[Nstates]
			Nstates++;
		}
	}else{
		out+=fortranRHS(m.f(),'feval').toString()+'\n\n';
	}
	this.toString=function(){return out}
}

function boolPerm(n) {
	if (n==1) {
		return [[true],[false]];
	}else{
		var tmp = boolPerm(n-1);
		var out = [];
		for (var i=0;i<tmp.length;i++) {
			var copy=tmp[i].slice();
			copy.push(true)
			out.push(copy);
			copy=tmp[i].slice();
			copy.push(false)
			out.push(copy);
		}
		return out;
	}
}


//module.exports.fortranJacobian=fortranJacobian
module.exports.heavisideJacobians=heavisideJacobians
module.exports.heavisideRHS=heavisideRHS
module.exports.fortranParamParser=fortranParamParser