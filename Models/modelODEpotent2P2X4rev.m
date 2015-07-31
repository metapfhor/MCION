function ode = modelODEpotent2P2X4rev(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 L7 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 a1 a2 A;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		setAuxiliarypotent2P2X4rev(y);
		dy=zeros(21,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(3)+H1*y(17)+H4*y(21)-(k2*A+L2*J^n1/(J^n1+delta^n1))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+L1*y(4)-(k1+k4*A+H2+L2*J^n1/(J^n1+delta^n1))*y(2);%C2
		dy(3)=v1*k1*y(4)+L2*J^n1/(J^n1+delta^n1)*y(1)+L3*y(5)-(r1*k2*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(11)+L2*J^n1/(J^n1+delta^n1)*y(2)+L3*y(6)-(v1*k1+r1*k4*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(4);%C4
		dy(5)=v2*k1*y(6)+L4*J^n2/(J^n2+epsilon^n2)*y(3)+L7*y(7)-(r2*k2*A+L3)*y(5);%C5
		dy(6)=r2*k2*A*y(5)+v2*k3*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(4)+L7*y(8)-(v2*k1+r2*k4*A+L3)*y(6);%C6
		dy(7)=v3*k1*y(8)-(r3*k2*A+L7)*y(7);%C7
		dy(8)=r3*k2*A*y(7)+v3*k3*y(15)-(v3*k1+r3*k4*A+L7)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+L1*y(11)-(k3+k6*A+H2+L2*J^n1/(J^n1+delta^n1))*y(9);%Q1
		dy(10)=k6*A*y(9)+L1*y(12)-(k5+H2+L2*J^n1/(J^n1+delta^n1))*y(10);%Q2
		dy(11)=r1*k4*A*y(4)+v1*k5*y(12)+L2*J^n1/(J^n1+delta^n1)*y(9)+L3*y(13)-(v1*k3+r1*k6*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(11);%Q3
		dy(12)=r1*k6*A*y(11)+L2*J^n1/(J^n1+delta^n1)*y(10)+L3*y(14)-(v1*k5+L1+L4*J^n2/(J^n2+epsilon^n2))*y(12);%Q4
		dy(13)=r2*k4*A*y(6)+v2*k5*y(14)+L4*J^n2/(J^n2+epsilon^n2)*y(11)+L7*y(15)-(v2*k3+r2*k6*A+L3)*y(13);%Q5
		dy(14)=r2*k6*A*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(12)+L5*y(16)-(v2*k5+L3+L6*J^n3/(J^n3+mu^n3))*y(14);%Q6
		dy(15)=r3*k4*A*y(8)+v3*k5*y(16)-(v3*k3+r3*k6*A+L7)*y(15);%Q7
		dy(16)=r3*k6*A*y(15)+L6*J^n3/(J^n3+mu^n3)*y(14)-(v3*k5+L5)*y(16);%Q8
		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
		dy(21)=H3*y(20)-H4*y(21);%Z
	end
	ode=@ model;
end