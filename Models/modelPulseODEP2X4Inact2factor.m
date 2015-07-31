function ode = modelPulseODEP2X4Inact2factor(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 W2 H0 H11 H12 H13 H14 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 r1 r2 r3 v1 v2 v3 A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)

		dy=zeros(34,1);
		A=ATP(t);
		J=IVM(t);
		setAuxiliaryP2X4Inact2factor(y);
		dy(1)=H5*y(2)+H4*y(34)-(H0+W2*J^4/(J^4+delta^4))*y(1);%C0
		dy(2)=H0*y(1)+k1*y(3)+L1*y(4)+ks1*y(18)-(H5+k2*A+L2*J^4/(J^4+delta^4))*y(2);%C1
		dy(3)=k2*A*y(2)+k3*y(10)+ks1*y(19)+L1*y(5)-(k1+k4*A+kd1+L2*J^4/(J^4+delta^4))*y(3);%C2
		dy(4)=v1*k1*y(5)+W2*J^4/(J^4+delta^4)*y(1)+L2*J^4/(J^4+delta^4)*y(2)+L3*y(6)+ks2*y(22)-(r1*k2*A+L1+L4*J^4/(J^4+epsilon^4))*y(4);%C3
		dy(5)=r1*k2*A*y(4)+v1*k3*y(12)+ks2*y(23)+L2*J^4/(J^4+delta^4)*y(3)+L3*y(7)-(v1*k1+r1*k4*A+kd2+L1+L4*J^4/(J^4+epsilon^4))*y(5);%C4
		dy(6)=v2*k1*y(7)+L4*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)+ks3*y(26)-(r2*k2*A+L3+L6*J^4/(J^4+mu^4))*y(6);%C5
		dy(7)=r2*k2*A*y(6)+v2*k3*y(14)+ks3*y(27)+L4*J^4/(J^4+epsilon^4)*y(5)+L5*y(9)-(v2*k1+r2*k4*A+kd3+L3+L6*J^4/(J^4+mu^4))*y(7);%C6
		dy(8)=v3*k1*y(9)+L6*J^4/(J^4+mu^4)*y(6)+ks4*y(30)-(r3*k2*A+L5)*y(8);%C7
		dy(9)=r3*k2*A*y(8)+v3*k3*y(16)+ks4*y(31)+L6*J^4/(J^4+mu^4)*y(7)-(v3*k1+r3*k4*A+kd4+L5)*y(9);%C8
		dy(10)=k4*A*y(3)+k5*y(11)+ks1*y(20)+L1*y(12)-(k3+k6*A+kd1+L2*J^4/(J^4+delta^4))*y(10);%Q1
		dy(11)=k6*A*y(10)+ks1*y(21)+L1*y(13)-(k5+kd1+L2*J^4/(J^4+delta^4))*y(11);%Q2
		dy(12)=r1*k4*A*y(5)+v1*k5*y(13)+ks2*y(24)+L2*J^4/(J^4+delta^4)*y(10)+L3*y(14)-(v1*k3+r1*k6*A+kd2+L1+L4*J^4/(J^4+epsilon^4))*y(12);%Q3
		dy(13)=r1*k6*A*y(12)+ks2*y(25)+L2*J^4/(J^4+delta^4)*y(11)+L3*y(15)-(v1*k5+kd2+L1+L4*J^4/(J^4+epsilon^4))*y(13);%Q4
		dy(14)=r2*k4*A*y(7)+v2*k5*y(15)+ks3*y(28)+L4*J^4/(J^4+epsilon^4)*y(12)+L5*y(16)-(v2*k3+r2*k6*A+kd3+L3+L6*J^4/(J^4+mu^4))*y(14);%Q5
		dy(15)=r2*k6*A*y(14)+ks3*y(29)+L4*J^4/(J^4+epsilon^4)*y(13)+L5*y(17)-(v2*k5+kd3+L3+L6*J^4/(J^4+mu^4))*y(15);%Q6
		dy(16)=r3*k4*A*y(9)+v3*k5*y(17)+ks4*y(32)+L6*J^4/(J^4+mu^4)*y(14)-(v3*k3+r3*k6*A+kd4+L5)*y(16);%Q7
		dy(17)=r3*k6*A*y(16)+ks4*y(33)+L6*J^4/(J^4+mu^4)*y(15)-(v3*k5+kd4+L5)*y(17);%Q8
		dy(18)=k1*y(19)+L1*y(22)-(k2*A+L2*J^4/(J^4+delta^4)+ks1)*y(18);%D11
		dy(19)=k2*A*y(18)+k3*y(20)+kd1*y(3)+L1*y(23)-(k1+k4*A+ks1+L2*J^4/(J^4+delta^4))*y(19);%D12
		dy(20)=k4*A*y(19)+k5*y(21)+kd1*y(10)+L1*y(24)-(k3+k6*A+ks1+L2*J^4/(J^4+delta^4))*y(20);%D13
		dy(21)=k6*A*y(20)+kd1*y(11)+L1*y(25)-(k5+ks1+L2*J^4/(J^4+delta^4)+H3)*y(21);%D14
		dy(22)=v1*k1*y(23)+L2*J^4/(J^4+delta^4)*y(18)+L3*y(27)-(r1*k2*A+L1+L4*J^4/(J^4+epsilon^4)+ks2)*y(22);%D21
		dy(23)=r1*k2*A*y(22)+v1*k3*y(24)+kd2*y(5)+L2*J^4/(J^4+delta^4)*y(19)+L3*y(26)-(v1*k1+r1*k4*A+ks2+L1+L4*J^4/(J^4+epsilon^4))*y(23);%D22
		dy(24)=r1*k4*A*y(23)+v1*k5*y(25)+kd2*y(12)+L2*J^4/(J^4+delta^4)*y(20)+L3*y(28)-(v1*k3+r1*k6*A+ks2+L1+L4*J^4/(J^4+epsilon^4))*y(24);%D23
		dy(25)=r1*k6*A*y(24)+kd2*y(13)+L2*J^4/(J^4+delta^4)*y(21)+L3*y(29)-(v1*k5+ks2+L1+L4*J^4/(J^4+epsilon^4)+H3D)*y(25);%D24
		dy(26)=v2*k1*y(27)+L4*J^4/(J^4+epsilon^4)*y(23)+L5*y(30)-(r2*k2*A+L3+L6*J^4/(J^4+mu^4)+ks3)*y(26);%D31
		dy(27)=r2*k2*A*y(26)+v2*k3*y(28)+kd3*y(7)+L4*J^4/(J^4+epsilon^4)*y(22)+L5*y(31)-(v2*k1+r2*k4*A+ks3+L3+L6*J^4/(J^4+mu^4))*y(27);%D32
		dy(28)=r2*k4*A*y(27)+v2*k5*y(29)+kd3*y(14)+L4*J^4/(J^4+epsilon^4)*y(24)+L5*y(32)-(v2*k3+r2*k6*A+ks3+L3+L6*J^4/(J^4+mu^4))*y(28);%D33
		dy(29)=r2*k6*A*y(28)+kd3*y(15)+L4*J^4/(J^4+epsilon^4)*y(25)+L5*y(33)-(v2*k5+ks3+L3+L6*J^4/(J^4+mu^4)+H3D)*y(29);%D34
		dy(30)=v3*k1*y(31)+L6*J^4/(J^4+mu^4)*y(26)-(r3*k2*A+L5+ks4)*y(30);%D41
		dy(31)=r3*k2*A*y(30)+v3*k3*y(32)+kd4*y(9)+L6*J^4/(J^4+mu^4)*y(27)-(v3*k1+r3*k4*A+ks4+L5)*y(31);%D42
		dy(32)=r3*k4*A*y(31)+v3*k5*y(33)+kd4*y(16)+L6*J^4/(J^4+mu^4)*y(28)-(v3*k3+r3*k6*A+ks4+L5)*y(32);%D43
		dy(33)=r3*k6*A*y(32)+kd4*y(17)+L6*J^4/(J^4+mu^4)*y(29)-(v3*k5+ks4+L5+H3D)*y(33);%D44
		dy(34)=H3*y(21)+H3D*y(25)+H3D*y(29)+H3D*y(33)-H4*y(34);%Z
	end
	ode=@ model;
end