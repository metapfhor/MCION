function ode = modelODEfullP2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V n K1 K2 K3 sens k1p k2p k3p k4p k5p k6p;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		setAuxiliaryfullP2X7(y);
		dy=zeros(8,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(4)-3*k2*A*y(1);%C1
		dy(2)=3*k2*A*y(1)+2*k3*y(5)-(k1+2*k4*A)*y(2);%C2
		dy(3)=3*k2p*A*y(4)+2*k3p*y(8)-(k1p+2*k4p*A)*y(3);%C3
		dy(4)=k1p*y(3)-(3*k2p*A+L1)*y(4);%C4
		dy(5)=2*k4*A*y(2)+3*k5*y(6)-(2*k3+k6*A)*y(5);%O1
		dy(6)=k6*A*y(5)+L2*y(7)-(3*k5+L3)*y(6);%O2
		dy(7)=k6p*A*y(8)+L3*y(6)-(3*k5p+L2)*y(7);%O3
		dy(8)=2*k4p*A*y(3)+3*k5p*y(7)-(2*k3p+k6p*A)*y(8);%O4
	end
	ode=@ model;
end