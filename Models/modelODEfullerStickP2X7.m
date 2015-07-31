function ode = modelODEfullerStickP2X7(ton,toff)
global k1 K1 k3 K2 k5 K3 k7 Ks3 k9 Ks2 k11 Ks1 L1 Kd L3 L4 L5 Ks H1 Kds H7 g12 g34 E12 E34 A V alpha1 alpha3 alpha32 alpha100 alpha k2 k4 k6 L2 L6 k8 k10 k12 H6;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(13,1);
		A=ATP(t);
		dy(1)=k1*y(2)-k2*A*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(3)-(k1+k4*A)*y(2);%C2
		dy(3)=k4*A*y(2)+k5*y(4)-(k3+k6*A)*y(3);%O1
		dy(4)=k6*A*y(3)+L2*y(5)+H6*y(9)-(k5+L3+H7)*y(4);%O2
		dy(5)=L3*y(4)+L6*y(13)-(L2+L5)*y(5);%O3
		dy(6)=k1*y(7)-k2*A*y(6);%D1
		dy(7)=k2*A*y(6)+k3*y(8)-(k1+k4*A)*y(7);%D2
		dy(8)=k4*A*y(7)+k5*y(9)-(k3+k6*A)*y(8);%D3
		dy(9)=k6*A*y(8)+H7*y(4)-(k5+H6)*y(9);%D4
		dy(10)=k11*y(11)-k12*A*y(10);%S1
		dy(11)=k12*A*y(10)+k9*y(12)-(k11+k10*A)*y(11);%S2
		dy(12)=k10*A*y(11)+k7*y(13)-(k9+k8*A)*y(12);%S3
		dy(13)=k8*A*y(12)+L5*y(5)-(k7+L6)*y(13);%S4
	end
	ode=@ model;
end