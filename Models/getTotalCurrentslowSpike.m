function I = getTotalCurrentslowSpike(Y,V)
global q1 q2 q3 q4 q5 q6 vout Acell;
	I = Acell*10^12*(Y(:,3)+Y(:,4)).*V;
end