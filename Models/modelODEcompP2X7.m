function ode = modelODEcompP2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V EC n k1eff k2eff k3eff k4eff k5eff k6eff;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(12,1);
		A=ATP(t);
		dy(1)=k1eff*y(2)+L1*y(4)+H1*y(9)-3*k2eff*A*y(1);%C1
		dy(2)=3*k2eff*A*y(1)+2*k3eff*y(5)+H2*y(10)-(k1eff+2*k4eff*A+H3)*y(2);%C2
		dy(3)=3*k2eff*A*y(4)+2*k1eff*y(8)-(k1eff+2*k2eff*A)*y(3);%C3
		dy(4)=k1eff*y(3)-(3*k2eff*A+L1)*y(4);%C4
		dy(5)=2*k4eff*A*y(2)+3*k5eff*y(6)+H4*y(11)-(2*k3eff+k6eff*A+H5)*y(5);%O1
		dy(6)=k6eff*A*y(5)+L2*y(7)+H6*y(12)-(3*k5eff+L3+H7)*y(6);%O2
		dy(7)=k2eff*A*y(8)+L3*y(6)-(3*k1eff+L2)*y(7);%O3
		dy(8)=2*k2eff*A*y(3)+3*k1eff*y(7)-(2*k1eff+k2eff*A)*y(8);%O4
		dy(9)=k1eff*y(10)-(3*k2eff*A+H1)*y(9);%D1
		dy(10)=3*k2eff*A*y(9)+2*k3eff*y(11)+H3*y(2)-(k1eff+2*k4eff*A+H2)*y(10);%D2
		dy(11)=2*k4eff*A*y(10)+3*k5eff*y(12)+H5*y(5)-(2*k3eff+k6eff*A+H4)*y(11);%D3
		dy(12)=k6eff*A*y(11)+H7*y(6)-(3*k5eff+H6)*y(12);%D4
	end
	ode=@ model;
end