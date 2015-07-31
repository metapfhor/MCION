function ode = modelODEanmarP2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V K1 K2 K3;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		setAuxiliaryanmarP2X7(y);
		dy=zeros(12,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(4)+H1*y(9)-3*k2*A*y(1);%C1
		dy(2)=3*k2*A*y(1)+2*k3*y(5)+H7*y(10)-(k1+2*k4*A+H6)*y(2);%C2
		dy(3)=3*k2*A*y(4)+2*k1*y(8)-(k1+2*k2*A)*y(3);%C3
		dy(4)=k1*y(3)-(3*k2*A+L1)*y(4);%C4
		dy(5)=2*k4*A*y(2)+3*k5*y(6)+H5*y(11)-(2*k3+k6*A+H4)*y(5);%O1
		dy(6)=k6*A*y(5)+L2*y(7)+H3*y(12)-(3*k5+L3+H2)*y(6);%O2
		dy(7)=k2*A*y(8)+L3*y(6)-(3*k1+L2)*y(7);%O3
		dy(8)=2*k2*A*y(3)+3*k1*y(7)-(2*k1+k2*A)*y(8);%O4
		dy(9)=k1*y(10)-(3*k2*A+H1)*y(9);%D1
		dy(10)=3*k2*A*y(9)+2*k3*y(11)+H6*y(2)-(k1+2*k4*A+H7)*y(10);%D2
		dy(11)=2*k4*A*y(10)+3*k5*y(12)+H4*y(5)-(2*k3+k6*A+H5)*y(11);%D3
		dy(12)=k6*A*y(11)+H2*y(6)-(3*k5+H3)*y(12);%D4
	end
	ode=@ model;
end