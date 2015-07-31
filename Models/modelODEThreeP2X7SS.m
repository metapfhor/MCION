function ode = modelODEThreeP2X7SS(ton,toff,amp)
global R k3 g12 E12;
	ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(1,1);
		A=ATP(t);
		dy(1)=2*k4*A*1/(1+k1/3*k2*A)-2*k3*y(1);%O1
	end
	ode=@ model;
end