function ode = modelPulseODEP2X4stacksub(ton,toff)
global d1 d2 d3 d4 d5 d6 d7 d8 k1 k2 k3 k4 k5 k6 H11 H21 H3 H4 g1 g2 E1 E2 A J V A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4stacksub(y);
		dy=zeros(7,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+H11*y(5)+H4*y(7)-k2*A*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(3)-(k1+k4*A+H21)*y(2);%C2
		dy(3)=k4*A*y(2)+k5*y(4)-(k3+k6*A+H21)*y(3);%Q1
		dy(4)=k6*A*y(3)-(k5+H21)*y(4);%Q2
		dy(5)=d1*y(6)-(d2*A+H11)*y(5);%D11
		dy(6)=d2*A*y(5)+H21*y(2)+H21*y(3)+H21*y(4)-(d1+H3)*y(6);%D12
		dy(7)=H3*y(6)-H4*y(7);%Z
	end
	ode=@ model;
end