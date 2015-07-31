function ode = modelODEfullP2X7Therm(ton,toff)
global K1 k1 K2 k3 K3 k5 Ks3 k7 Ks2 k9 Ks1 k11 L1 Ks L3 H1 H2 H3 H4 H5 Kds H7 g12 g34 E12 E34 A V alpha10 alpha1 alpha3 alpha32 alpha100 alpha k2 k4 k6 L2 k8 k10 k12 H6;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(12,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(4)+H1*y(9)-k2*A*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(5)-(k1+k4*A)*y(2);%C2
		dy(3)=k12*A*y(4)+k9*y(8)-(k11+k10*A)*y(3);%C3
		dy(4)=k11*y(3)-(k12*A+L1)*y(4);%C4
		dy(5)=k4*A*y(2)+k5*y(6)-(k3+k6*A)*y(5);%O1
		dy(6)=k6*A*y(5)+L2*y(7)+H6*y(12)-(k5+L3+H7)*y(6);%O2
		dy(7)=k8*A*y(8)+L3*y(6)-(k7+L2)*y(7);%O3
		dy(8)=k10*A*y(3)+k7*y(7)-(k9+k8*A)*y(8);%O4
		dy(9)=k1*y(10)-(k2*A+H1)*y(9);%D1
		dy(10)=k2*A*y(9)+k3*y(11)-(k1+k4*A)*y(10);%D2
		dy(11)=k4*A*y(10)+k5*y(12)-(k3+k6*A)*y(11);%D3
		dy(12)=k6*A*y(11)+H7*y(6)-(k5+H6)*y(12);%D4
	end
	ode=@ model;
end