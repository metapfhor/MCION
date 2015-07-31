function ode = modelODEpotentP2X4poolindep(ton,toff)
global k1 k2 k3 k4 k5 k6 kd1 ku1 kd2 ku2 kd3 ku3 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3 rho1 rho2 rho3 A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliarypotentP2X4poolindep(y);
		dy=zeros(33,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L1*y(3)+H1*y(29)+H4*y(33)-(k2*A+L2*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(15)+L1*y(4)-(k1+k4*A+H2+rho1*L2*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=v1*k1*y(4)+ku1*y(9)+L2*J^4/(J^4+delta^4)*y(1)+L3*y(5)-(r1*k2*A+kd1*J+L1+L4*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(17)+ku1*y(10)+rho1*L2*J^4/(J^4+delta^4)*y(2)+L3*y(6)-(v1*k1+r1*k4*A+kd1*J+L1+rho1*L4*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=v2*k1*y(6)+ku2*y(11)+L4*J^4/(J^4+epsilon^4)*y(3)+L5*y(7)-(r2*k2*A+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=r2*k2*A*y(5)+v2*k3*y(19)+ku2*y(12)+rho1*L4*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)-(v2*k1+r2*k4*A+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=v3*k1*y(8)+ku3*y(13)+L6*J^4/(J^4+mu^4)*y(5)-(r3*k2*A+kd3*J+L5)*y(7);%C7
		dy(8)=r3*k2*A*y(7)+v3*k3*y(21)+ku3*y(14)+L6*J^4/(J^4+mu^4)*y(6)-(v3*k1+r3*k4*A+kd3*J+L5)*y(8);%C8
		dy(9)=w1*k1*y(10)+kd1*J*y(3)+L7*y(11)-(s1*k2*A+ku1+L8*J^4/(J^4+epsilon^4))*y(9);%CD3
		dy(10)=s1*k2*A*y(9)+w1*k3*y(23)+kd1*J*y(4)+L7*y(12)-(w1*k1+s1*k4*A+ku1+rho1*L8*J^4/(J^4+epsilon^4))*y(10);%CD4
		dy(11)=w2*k1*y(12)+kd2*J*y(5)+L8*J^4/(J^4+epsilon^4)*y(9)+L9*y(13)-(s2*k2*A+ku2+L7+L10*J^4/(J^4+mu^4))*y(11);%CD5
		dy(12)=s2*k2*A*y(11)+w2*k3*y(25)+kd2*J*y(6)+rho1*L8*J^4/(J^4+epsilon^4)*y(10)+L9*y(14)-(w2*k1+s2*k4*A+ku2+L7+L10*J^4/(J^4+mu^4))*y(12);%CD6
		dy(13)=w3*k1*y(14)+kd3*J*y(7)+L10*J^4/(J^4+mu^4)*y(11)-(s3*k2*A+ku3+L9)*y(13);%CD7
		dy(14)=s3*k2*A*y(13)+w3*k3*y(27)+kd3*J*y(8)+L10*J^4/(J^4+mu^4)*y(12)-(w3*k1+s3*k4*A+ku3+L9)*y(14);%CD8
		dy(15)=k4*A*y(2)+k5*y(16)+L1*y(17)-(k3+k6*A+H2+rho2*L2*J^4/(J^4+delta^4))*y(15);%Q1
		dy(16)=k6*A*y(15)+L1*y(18)-(k5+H2+rho3*L2*J^4/(J^4+delta^4))*y(16);%Q2
		dy(17)=r1*k4*A*y(4)+v1*k5*y(18)+ku1*y(23)+rho2*L2*J^4/(J^4+delta^4)*y(15)+L3*y(19)-(v1*k3+r1*k6*A+kd1*J+L1+rho2*L4*J^4/(J^4+epsilon^4))*y(17);%Q3
		dy(18)=r1*k6*A*y(17)+ku1*y(24)+rho3*L2*J^4/(J^4+delta^4)*y(16)+L3*y(20)-(v1*k5+kd1*J+L1+rho3*L4*J^4/(J^4+epsilon^4))*y(18);%Q4
		dy(19)=r2*k4*A*y(6)+v2*k5*y(20)+ku2*y(25)+rho2*L4*J^4/(J^4+epsilon^4)*y(17)+L5*y(21)-(v2*k3+r2*k6*A+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(19);%Q5
		dy(20)=r2*k6*A*y(19)+ku2*y(26)+rho3*L4*J^4/(J^4+epsilon^4)*y(18)+L5*y(22)-(v2*k5+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(20);%Q6
		dy(21)=r3*k4*A*y(8)+v3*k5*y(22)+ku3*y(27)+L6*J^4/(J^4+mu^4)*y(19)-(v3*k3+r3*k6*A+kd3*J+L5)*y(21);%Q7
		dy(22)=r3*k6*A*y(21)+ku3*y(28)+L6*J^4/(J^4+mu^4)*y(20)-(v3*k5+kd3*J+L5)*y(22);%Q8
		dy(23)=s1*k4*A*y(10)+w1*k5*y(24)+kd1*J*y(17)+L7*y(25)-(w1*k3+s1*k6*A+ku1+rho2*L8*J^4/(J^4+epsilon^4))*y(23);%QD3
		dy(24)=s1*k6*A*y(23)+kd1*J*y(18)+L7*y(26)-(w1*k5+ku1+rho3*L8*J^4/(J^4+epsilon^4))*y(24);%QD4
		dy(25)=s2*k4*A*y(12)+w2*k5*y(26)+kd2*J*y(19)+rho2*L8*J^4/(J^4+epsilon^4)*y(23)+L9*y(27)-(w2*k3+s2*k6*A+ku2+L7+L10*J^4/(J^4+mu^4))*y(25);%QD5
		dy(26)=s2*k6*A*y(25)+kd2*J*y(20)+rho3*L8*J^4/(J^4+epsilon^4)*y(24)+L9*y(28)-(w2*k5+ku2+L7+L10*J^4/(J^4+mu^4))*y(26);%QD6
		dy(27)=s3*k4*A*y(14)+w3*k5*y(28)+kd3*J*y(21)+L10*J^4/(J^4+mu^4)*y(25)-(w3*k3+s3*k6*A+ku3+L9)*y(27);%QD7
		dy(28)=s3*k6*A*y(27)+kd3*J*y(22)+L10*J^4/(J^4+mu^4)*y(26)-(w3*k5+ku3+L9)*y(28);%QD8
		dy(29)=k1*y(30)-(k2*A+H1)*y(29);%D1
		dy(30)=k2*A*y(29)+k3*y(31)+H2*y(2)-(k1+k4*A)*y(30);%D2
		dy(31)=k4*A*y(30)+k5*y(32)+H2*y(15)-(k3+k6*A)*y(31);%D3
		dy(32)=k6*A*y(31)+H2*y(16)-(k5+H3)*y(32);%D4
		dy(33)=H3*y(32)-H4*y(33);%Z
	end
	ode=@ model;
end