function ode = modelODEphosph1P2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L5 L6 H1 H2 H3 H4 H5 H6 H7 g0 g1 gd E12 E34 A V n K1 K2 K3;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		setAuxiliaryphosph1P2X7(y);
		dy=zeros(12,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(4)-3*k2*A*y(1);%C1
		dy(2)=3*k2*A*y(1)+2*k3*y(5)-(k1+2*k4*A)*y(2);%C2
		dy(3)=k1*y(4)-3*k2*A*y(3);%C3
		dy(4)=3*k2*A*y(3)+2*k3*y(7)-(k1+2*k4*A+L1)*y(4);%C4
		dy(5)=2*k4*A*y(2)+3*k5*y(6)-(2*k3+k6*A)*y(5);%O1
		dy(6)=k6*A*y(5)+L2*y(8)-(3*k5+L3)*y(6);%O2
		dy(7)=2*k4*A*y(4)+3*k5*y(8)-(2*k3+k6*A)*y(7);%O3
		dy(8)=k6*A*y(7)+L3*y(6)+L6*y(12)-(3*k5+L2+L5)*y(8);%O4
		dy(9)=k11*y(10)-3*k12*A*y(9);%S1
		dy(10)=3*k12*A*y(9)+2*k9*y(11)-(k11+2*k10*A)*y(10);%S2
		dy(11)=2*k10*A*y(10)+3*k7*y(12)-(2*k9+k8*A)*y(11);%S3
		dy(12)=k8*A*y(11)+L5*y(8)-(3*k7+L6)*y(12);%S4
	end
	ode=@ model;
end