function ode = modelODEpotentP2X4sub(ton,toff)
global k1 k2 k3 k4 k5 k6 H1 H2 H3 H4 g1 E1 E2 A J V A IVMon IVMoff;
	A0=A;
	J0=J;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliarypotentP2X4sub(y);
		dy=zeros(9,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+H1*y(5)+H4*y(9)-k2*A*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(3)-(k1+k4*A+H2)*y(2);%C2
		dy(3)=k4*A*y(2)+k5*y(4)-(k3+k6*A+H2)*y(3);%Q1
		dy(4)=k6*A*y(3)-(k5+H2)*y(4);%Q2
		dy(5)=k1*y(6)-(k2*A+H1)*y(5);%D1
		dy(6)=k2*A*y(5)+k3*y(7)+H2*y(2)-(k1+k4*A)*y(6);%D2
		dy(7)=k4*A*y(6)+k5*y(8)+H2*y(3)-(k3+k6*A)*y(7);%D3
		dy(8)=k6*A*y(7)+H2*y(4)-(k5+H3)*y(8);%D4
		dy(9)=H3*y(8)-H4*y(9);%Z
	end
	ode=@ model;
end