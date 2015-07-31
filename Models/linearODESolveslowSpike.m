function  linearODESolveslowSpike()
global q1 q2 q3 q4 q5 q6 vout p0 Acell Tsoln I Y imin imax t0 Q;
	%#codegen
	generatorMatrixslowSpike();
	
	for i=imin:imax
		p0=p0*expm(Q*(Tsoln(i)-t0));
		Y(i,:)=p0;
		I(i)=Acell*10^12*(p0(3)+p0(4))*V;
	end
end