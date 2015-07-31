function ode = modelODEslowSpike(ton,toff)
global q1 q2 q3 q4 q5 q6 vout;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(5,1);
		A=ATP(t);
		dy(1)=q1*y(2)-q2*A*y(1);%B
		dy(2)=q2*A*y(1)+q3*y(3)-(q1+q4*A)*y(2);%C
		dy(3)=q4*A*y(2)+q5*y(4)-(q3+q6*A)*y(3);%D
		dy(4)=q6*A*y(3)-(q5+vout)*y(4);%E
		dy(5)=vout*y(4);%S
	end
	ode=@ model;
end