function ode = modelODEphosph2P2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L5 L6 H1 H2 H3 H4 H5 H6 H7 g0 g1 gd E12 E34 A V n K1 K2 K3;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		setAuxiliaryphosph2P2X7(y);
		dy=zeros(16,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(13)-3*k2*A*y(1);%C1
		dy(2)=3*k2*A*y(1)+2*k3*y(7)-(k1+2*k4*A)*y(2);%C2
		dy(3)=k1*y(4)-3*k2*A*y(3);%C3
		dy(4)=3*k2*A*y(3)+2*k3*y(9)-(k1+2*k4*A)*y(4);%C4
		dy(5)=k1*y(6)-3*k2*A*y(5);%C5
		dy(6)=3*k2*A*y(5)+2*k3*y(11)-(k1+2*k4*A)*y(6);%C6
		dy(7)=2*k4*A*y(2)+3*k5*y(8)-(2*k3+k6*A)*y(7);%O1
		dy(8)=k6*A*y(7)+L2*y(10)-(3*k5+L3)*y(8);%O2
		dy(9)=2*k4*A*y(4)+3*k5*y(10)-(2*k3+k6*A)*y(9);%O3
		dy(10)=k6*A*y(9)+L3*y(8)+L2*y(12)-(3*k5+L2+L3)*y(10);%O4
		dy(11)=2*k4*A*y(6)+3*k5*y(12)-(2*k3+k6*A)*y(11);%O5
		dy(12)=k6*A*y(11)+L3*y(10)+L6*y(16)-(3*k5+L2+L5)*y(12);%O6
		dy(13)=k11*y(14)-(3*k12*A+L1)*y(13);%S1
		dy(14)=3*k12*A*y(13)+2*k9*y(15)-(k11+2*k10*A)*y(14);%S2
		dy(15)=2*k10*A*y(14)+3*k7*y(16)-(2*k9+k8*A)*y(15);%S3
		dy(16)=k8*A*y(15)+L5*y(12)-(3*k7+L6)*y(16);%S4
	end
	ode=@ model;
end