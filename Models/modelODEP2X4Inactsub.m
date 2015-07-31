function ode = modelODEP2X4Inactsub(ton,toff)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 delta epsilon mu A J V A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4Inactsub(y);
		dy=zeros(10,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=H5*y(2)+H1*y(6)-H0*y(1);%C0
		dy(2)=H0*y(1)+k1*y(3)+H4*y(10)-(H5+k2*A)*y(2);%C1
		dy(3)=k2*A*y(2)+k3*y(4)+H1*y(7)-(k1+k4*A+H2)*y(3);%C2
		dy(4)=k4*A*y(3)+k5*y(5)+H1*y(8)-(k3+k6*A+H2)*y(4);%Q1
		dy(5)=k6*A*y(4)+H1*y(9)-(k5+H2)*y(5);%Q2
		dy(6)=k1*y(7)-(k2*A+H1)*y(6);%D11
		dy(7)=k2*A*y(6)+k3*y(8)+H2*y(3)-(k1+k4*A+H1)*y(7);%D12
		dy(8)=k4*A*y(7)+k5*y(9)+H2*y(4)-(k3+k6*A+H1)*y(8);%D13
		dy(9)=k6*A*y(8)+H2*y(5)-(k5+H1+H3)*y(9);%D14
		dy(10)=H3*y(9)-H4*y(10);%Z
	end
	ode=@ model;
end