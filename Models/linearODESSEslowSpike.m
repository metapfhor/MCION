function linearODESSEslowSpike(T,I)
global q1 q2 q3 q4 q5 q6 vout Acell p0 err Q;
	%#codegen
	
	generatorMatrixslowSpike();
	Nt=length(T);
	
	
	for i=1:Nt
		p0=p0*expm(Q*T(i));
		err=err+abs(Acell*10^12*(p0(3)+p0(4))*V-I(i))^2;
	end
end