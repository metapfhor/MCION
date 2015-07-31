String.prototype.texifyCode=function(){
	function bracketFirstExpression(str) {

		var currPos = 0;
		var openBrackets = 0;
		var stillSearching = true;
		var expr='';
		
		while (stillSearching && currPos <= str.length) {
		  var currChar = str.charAt(currPos);
			switch (currChar) {
			  case '(':
				//add all but the first bracket
				if (openBrackets) {
					expr=expr.concat('(')
				}
				openBrackets++; 
				break;
			  case ')':
				openBrackets--;
				//add all but the last bracket
				if (openBrackets) {
					expr=expr.concat(')')
				}else{
					currPos++;
					stillSearching=false;
				}
				break;
			  case '+':
				//if we are inside brackets keep building string
				if (openBrackets) {
					expr=expr.concat('+');
				}else{
					stillSearching=false;
				}
				break;
				case '-':
				//if we are inside brackets keep building string
				if (openBrackets) {
					expr=expr.concat('-');
				}else{
					stillSearching=false;
				}
				break;
			  case '*':
				//if we are inside brackets keep building string
				if (openBrackets) {
					expr=expr.concat('*');
				}else{
					stillSearching=false;
				}
				break;
			case '=':
				stillSearching=false;
				break;
			default:
				expr=expr.concat(currChar);
				break;
			
			}
			if (stillSearching) {
				currPos++;
			}
		  
		}
		return '{'.concat(expr).concat('}').concat(str.substr(currPos))
		
	}
	function dfracLastExpression(str) {
		
		var currPos = str.length-1;
		var openBrackets = 0;
		var stillSearching = true;
		var expr='';
		while (stillSearching && currPos >= 0) {
		  var currChar = str.charAt(currPos);
			switch (currChar) {
			  case '(':
				openBrackets--; 
				//add all but the first bracket
				console.info('found a closer',openBrackets,expr)
				if (openBrackets) {
					expr=currChar.concat(expr)
				}else{
					currPos--;
					stillSearching=false;
				}
				break;
			  case ')':
				console.info('found a opener',openBrackets)
				//add all but the first bracket
				if (openBrackets) {
					expr=currChar.concat(expr)
				}
				openBrackets++;
				break;
			  case '+':
				//if we are inside brackets keep building string
				if (openBrackets) {
					expr=currChar.concat(expr);
				}else{
					stillSearching=false;
				}
				break;
				case '-':
				//if we are inside brackets keep building string
				if (openBrackets) {
					expr=currChar.concat(expr);
				}else{
					stillSearching=false;
				}
				break;
			  case '*':
				//if we are inside brackets keep building string
				if (openBrackets) {
					expr=currChar.concat(expr);
				}else{
					stillSearching=false;
				}
				break;
			case '=':
				stillSearching=false;
				break;
			default:
				expr=currChar.concat(expr);
				break;
			}
			if (stillSearching) {
				currPos--;
			}
 
		}

		if (currPos>0) {
			return str.slice(0,currPos+1).concat('\\dfrac{'.concat(expr).concat('}'));
		}else{
			return '\\dfrac{'.concat(expr).concat('}');
		}
		
		
	}
	var commas=this.split(',')
	if (commas.length>1) {
		var out = '';
		for (var i=0;i<commas.length;i++) {
			out+=commas[i].texifyCode().concat(',')
		}
		return out.slice(0,-1);
	
	}
	
	
	var str;

	//this strategy, while easy to implement, will not work for nested fractions
	//e.g. 3/(1+x/5)
	//a better implementation would probably involve building a tree
	//from parsed strings and recursing through it to print
	str=this;
	str=str.replace(/\{/g,'\\left\\{');
	str=str.replace(/\}/g,'\\right\\}');
	div=str.split('\/');
	str='';
	for (var i=0;i<div.length;i++) {
		if (i>0) {
			div[i]=bracketFirstExpression(div[i]);
			//str=str.concat()
		}
		if (i<div.length-1) {
			str=str.concat(dfracLastExpression(div[i]));
		}else{
			str=str.concat(div[i])
		}
		
	}
	
	//drop any numbers at the end of a 'word' down to subscript
	str=str.replace(/([a-zA-Z]+)(\d+)(\s|$|=|\+|\*|-|\/|\)|\^|\}|\\)/g,function(match,p1,p2,p3){return p1+'_{'+p2+'}'+p3;});
	
	//move any exponents up to superscript
	str=str.replace(/([^=\+\-\*\/\(\{\}]+)(\^)([^=\+\-\*\/\)\}]+)(\s|$|=|\+|\*|-|\/|\)|\^|\})/g,function(match,p1,p2,p3,p4){return p1+'^{'+p3+'}'+p4;});
	
	//remove multiplication signs
	str=str.replace(/\*/g,'');
	
	//greek letters
	function greekify(match,p1,p2){return p1.concat('\\'.concat(p2))};
	
	str=str.replace(/([+-/*(]|^)(alpha)/g,greekify);
	str=str.replace(/([+-/*(]|^)(beta)/g,greekify);
	str=str.replace(/([+-/*(]|^)(gamma)/g,greekify);
	str=str.replace(/([+-/*(]|^)(delta)/g,greekify);
	str=str.replace(/([+-/*(]|^)(epsilon)/g,greekify);
	str=str.replace(/([+-/*(]|^)(eta)/g,greekify);
	str=str.replace(/([+-/*(]|^)(tehta)/g,greekify);
	str=str.replace(/([+-/*(]|^)(kappa)/g,greekify);
	str=str.replace(/([+-/*(]|^)(lambda)/g,greekify);
	str=str.replace(/([+-/*(]|^)(mu)/g,greekify);
	str=str.replace(/([+-/*(]|^)(rho)/g,greekify);
	
	str=str.replace(/\(/g,'\\left(');
	str=str.replace(/\)/g,'\\right)')

	
	return str
}

if (process.argv.length>2) {
	console.info(process.argv[2].texifyCode())
}


//check out this code for bracket matching:
//http://stackoverflow.com/questions/15717436/js-regex-to-match-everything-inside-braces-including-nested-braces-i-want/27088184#27088184