function ode = modelODEThreeP2X7Forward(ton,toff,amp)
global k2 k4 g12 E12;
	ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(3,1);
		A=ATP(t);
		dy(1)=-3*k2*A-y(1);%C1
		dy(2)=3*k2*A+y(1)-2*k4*A-y(2);%C2
		dy(3)=2*k4*A+y(2);%O1
	end
	ode=@ model;
end