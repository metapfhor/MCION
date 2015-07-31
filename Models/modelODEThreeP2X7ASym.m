function ode = modelODEThreeP2X7ASym(ton,toff,amp)
global a b ra rb g12 E12;
	ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(1,1);
		A=ATP(t);
		dy(1)=0;%O1
	end
	ode=@ model;
end