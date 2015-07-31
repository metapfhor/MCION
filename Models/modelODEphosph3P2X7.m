function ode = modelODEphosph3P2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L5 L6 H1 H2 H3 H4 H5 H6 H7 g0 g1 gd E12 E34 A V n K1 K2 K3;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		setAuxiliaryphosph3P2X7(y);
		dy=zeros(20,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(17)-3*k2*A*y(1);%C1
		dy(2)=3*k2*A*y(1)+2*k3*y(9)-(k1+2*k4*A)*y(2);%C2
		dy(3)=k1*y(4)-3*k2*A*y(3);%C3
		dy(4)=3*k2*A*y(3)+2*k3*y(11)-(k1+2*k4*A)*y(4);%C4
		dy(5)=k1*y(6)-3*k2*A*y(5);%C5
		dy(6)=3*k2*A*y(5)+2*k3*y(13)-(k1+2*k4*A)*y(6);%C6
		dy(7)=k1*y(8)-3*k2*A*y(7);%C7
		dy(8)=3*k2*A*y(7)+2*k3*y(15)-(k1+2*k4*A)*y(8);%C8
		dy(9)=2*k4*A*y(2)+3*k5*y(10)-(2*k3+k6*A)*y(9);%O1
		dy(10)=k6*A*y(9)+L2*y(12)-(3*k5+L3)*y(10);%O2
		dy(11)=2*k4*A*y(4)+3*k5*y(12)-(2*k3+k6*A)*y(11);%O3
		dy(12)=k6*A*y(11)+L3*y(10)+L2*y(14)-(3*k5+L2+L3)*y(12);%O4
		dy(13)=2*k4*A*y(6)+3*k5*y(14)-(2*k3+k6*A)*y(13);%O5
		dy(14)=k6*A*y(13)+L3*y(12)+L2*y(16)-(3*k5+L2+L3)*y(14);%O6
		dy(15)=2*k4*A*y(8)+3*k5*y(16)-(2*k3+k6*A)*y(15);%O7
		dy(16)=k6*A*y(15)+L3*y(14)+L6*y(20)-(3*k5+L2+L5)*y(16);%O8
		dy(17)=k11*y(18)-(3*k12*A+L1)*y(17);%S1
		dy(18)=3*k12*A*y(17)+2*k9*y(19)-(k11+2*k10*A)*y(18);%S2
		dy(19)=2*k10*A*y(18)+3*k7*y(20)-(2*k9+k8*A)*y(19);%S3
		dy(20)=k8*A*y(19)+L5*y(16)-(3*k7+L6)*y(20);%S4
	end
	ode=@ model;
end