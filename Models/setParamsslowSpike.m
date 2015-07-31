function setParamsslowSpike(x)
	global q1 q2 q3 q4 q5 q6 vout;
	q1=getParam('q1',x);
	q2=getParam('q2',x);
	q3=getParam('q3',x);
	q4=getParam('q4',x);
	q5=getParam('q5',x);
	q6=getParam('q6',x);
	vout=getParam('vout',x);
end