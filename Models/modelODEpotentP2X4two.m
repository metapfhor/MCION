function ode = modelODEpotentP2X4two(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L5 L6 H1 H2 H2 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliarypotentP2X4two(y);
		dy=zeros(21,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L11*y(3)+H1*y(17)+H4*y(21)-(k2*A+L21*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+L12*y(4)-(k1+k4*A+H2+L22*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=v1*k1*y(4)+L21*J^4/(J^4+delta^4)*y(1)+L31*y(5)-(r1*k2*A+L11+L41*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(11)+L22*J^4/(J^4+delta^4)*y(2)+L32*y(6)-(v1*k1+r1*k4*A+L12+L42*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=k7*y(6)+L41*J^4/(J^4+epsilon^4)*y(3)+L5*y(7)-(k8*A+L31+L6*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=k8*A*y(5)+k9*y(13)+L42*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)-(k7+k10*A+L32+L6*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=v3*k7*y(8)+L6*J^4/(J^4+mu^4)*y(5)-(r3*k8*A+L5)*y(7);%C7
		dy(8)=r3*k8*A*y(7)+v3*k9*y(15)+L6*J^4/(J^4+mu^4)*y(6)-(v3*k7+r3*k10*A+L5)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+L13*y(11)-(k3+k6*A+H2+L23*J^4/(J^4+delta^4))*y(9);%Q1
		dy(10)=k6*A*y(9)+L14*y(12)-(k5+H2+L24*J^4/(J^4+delta^4))*y(10);%Q2
		dy(11)=r1*k4*A*y(4)+v1*k5*y(12)+L23*J^4/(J^4+delta^4)*y(9)+L33*y(13)-(v1*k3+r1*k6*A+L13+L43*J^4/(J^4+epsilon^4))*y(11);%Q3
		dy(12)=r1*k6*A*y(11)+L24*J^4/(J^4+delta^4)*y(10)+L34*y(14)-(v1*k5+L14+L44*J^4/(J^4+epsilon^4))*y(12);%Q4
		dy(13)=k10*A*y(6)+k11*y(14)+L43*J^4/(J^4+epsilon^4)*y(11)+L5*y(15)-(k9+k12*A+L33+L6*J^4/(J^4+mu^4))*y(13);%Q5
		dy(14)=k12*A*y(13)+L44*J^4/(J^4+epsilon^4)*y(12)+L5*y(16)-(k11+L34+L6*J^4/(J^4+mu^4))*y(14);%Q6
		dy(15)=r3*k10*A*y(8)+v3*k11*y(16)+L6*J^4/(J^4+mu^4)*y(13)-(v3*k9+r3*k12*A+L5)*y(15);%Q7
		dy(16)=r3*k12*A*y(15)+L6*J^4/(J^4+mu^4)*y(14)-(v3*k11+L5)*y(16);%Q8
		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
		dy(21)=H3*y(20)-H4*y(21);%Z
	end
	ode=@ model;
end