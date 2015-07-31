function ode = modelODEFourP2X7(ton,toff,amp)
global a1 a2 a3 b1 b2 b3 g12 E12;
	ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(4,1);
		A=ATP(t);
		dy(1)=b1*y(2)-a1*A*y(1);%C1
		dy(2)=a1*A*y(1)+b2*y(3)-(b1+a2*A)*y(2);%C2
		dy(3)=a2*A*y(2)+b3*y(4)-(b2+a3*A)*y(3);%O1
		dy(4)=a3*A*y(3)-b3*y(4);%O2
	end
	ode=@ model;
end