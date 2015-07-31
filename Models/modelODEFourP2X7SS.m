function ode = modelODEFourP2X7SS(ton,toff,amp)
global R L1 L2 k3 k5 k6 g12 E12;
	ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(2,1);
		A=ATP(t);
		dy(1)=0;%O1
		dy(2)=0;%O2
	end
	ode=@ model;
end