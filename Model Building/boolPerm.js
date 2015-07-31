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


console.info(boolPerm(3));