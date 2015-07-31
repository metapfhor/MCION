function ode = modelPulseODEpotentP2X4rev(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 alpha a1 a2 a3 A0 J0 IVMon IVMoff;
	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heaviside(t-ton(i))-heaviside(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliarypotentP2X4rev(y);
		dy=zeros(37,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+ku0*y(9)+L1*y(3)+H1*y(33)+H4*y(37)-(k2*A+L2*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(17)+ku0*y(10)+L1*y(4)-(k1+k4*A+H2+L2*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=v1*k1*y(4)+ku1*y(11)+L2*J^4/(J^4+delta^4)*y(1)+L3*y(5)-(r1*k2*A+L1+L4*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(19)+ku1*y(12)+L2*J^4/(J^4+delta^4)*y(2)+L3*y(6)-(v1*k1+r1*k4*A+L1+L4*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=v2*k1*y(6)+ku2*y(13)+L4*J^4/(J^4+epsilon^4)*y(3)+L5*y(7)-(r2*k2*A+L3+L6*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=r2*k2*A*y(5)+v2*k3*y(21)+ku2*y(14)+L4*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)-(v2*k1+r2*k4*A+L3+L6*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=v3*k1*y(8)+ku3*y(15)+L6*J^4/(J^4+mu^4)*y(5)-(r3*k2*A+L5)*y(7);%C7
		dy(8)=r3*k2*A*y(7)+v3*k3*y(23)+ku3*y(16)+L6*J^4/(J^4+mu^4)*y(6)-(v3*k1+r3*k4*A+L5)*y(8);%C8
		dy(9)=k7*y(10)+L1*y(11)-(k8*A+ku0+L2*J^4/(J^4+delta^4))*y(9);%CD1
		dy(10)=k8*A*y(9)+k9*y(25)+L1*y(12)-(k7+k10*A+ku0+alpha*H2+L2*J^4/(J^4+delta^4))*y(10);%CD2
		dy(11)=v1*k7*y(12)+L2*J^4/(J^4+delta^4)*y(9)+L3*y(13)-(r1*k8*A+ku1+L1+L4*J^4/(J^4+epsilon^4))*y(11);%CD3
		dy(12)=r1*k8*A*y(11)+v1*k9*y(27)+L2*J^4/(J^4+delta^4)*y(10)+L3*y(14)-(v1*k7+r1*k10*A+ku1+L1+L4*J^4/(J^4+epsilon^4))*y(12);%CD4
		dy(13)=v2*k7*y(14)+L4*J^4/(J^4+epsilon^4)*y(11)+L5*y(15)-(r2*k8*A+ku2+L3+L6*J^4/(J^4+mu^4))*y(13);%CD5
		dy(14)=r2*k8*A*y(13)+v2*k9*y(29)+L4*J^4/(J^4+epsilon^4)*y(12)+L5*y(16)-(v2*k7+r2*k10*A+ku2+L3+L6*J^4/(J^4+mu^4))*y(14);%CD6
		dy(15)=v3*k7*y(16)+L6*J^4/(J^4+mu^4)*y(13)-(r3*k8*A+ku3+L5)*y(15);%CD7
		dy(16)=r3*k8*A*y(15)+v3*k9*y(31)+L6*J^4/(J^4+mu^4)*y(14)-(v3*k7+r3*k10*A+ku3+L5)*y(16);%CD8
		dy(17)=k4*A*y(2)+k5*y(18)+ku0*y(25)+L1*y(19)-(k3+k6*A+H2+L2*J^4/(J^4+delta^4))*y(17);%Q1
		dy(18)=k6*A*y(17)+ku0*y(26)+L1*y(20)-(k5+kd0*J+H2+L2*J^4/(J^4+delta^4))*y(18);%Q2
		dy(19)=r1*k4*A*y(4)+v1*k5*y(20)+ku1*y(27)+L2*J^4/(J^4+delta^4)*y(17)+L3*y(21)-(v1*k3+r1*k6*A+L1+L4*J^4/(J^4+epsilon^4))*y(19);%Q3
		dy(20)=r1*k6*A*y(19)+ku1*y(28)+L2*J^4/(J^4+delta^4)*y(18)+L3*y(22)-(v1*k5+kd1*J+L1+L4*J^4/(J^4+epsilon^4))*y(20);%Q4
		dy(21)=r2*k4*A*y(6)+v2*k5*y(22)+ku2*y(29)+L4*J^4/(J^4+epsilon^4)*y(19)+L5*y(23)-(v2*k3+r2*k6*A+L3+L6*J^4/(J^4+mu^4))*y(21);%Q5
		dy(22)=r2*k6*A*y(21)+ku2*y(30)+L4*J^4/(J^4+epsilon^4)*y(20)+L5*y(24)-(v2*k5+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(22);%Q6
		dy(23)=r3*k4*A*y(8)+v3*k5*y(24)+ku3*y(31)+L6*J^4/(J^4+mu^4)*y(21)-(v3*k3+r3*k6*A+L5)*y(23);%Q7
		dy(24)=r3*k6*A*y(23)+ku3*y(32)+L6*J^4/(J^4+mu^4)*y(22)-(v3*k5+kd3*J+L5)*y(24);%Q8
		dy(25)=k10*A*y(10)+k11*y(26)+L1*y(27)-(k9+k12*A+ku0+alpha*H2+L2*J^4/(J^4+delta^4))*y(25);%QD1
		dy(26)=k12*A*y(25)+kd0*J*y(18)+L1*y(28)-(k11+ku0+alpha*H2+L2*J^4/(J^4+delta^4))*y(26);%QD2
		dy(27)=r1*k10*A*y(12)+v1*k11*y(28)+L2*J^4/(J^4+delta^4)*y(25)+L3*y(29)-(v1*k9+r1*k12*A+ku1+L1+L4*J^4/(J^4+epsilon^4))*y(27);%QD3
		dy(28)=r1*k12*A*y(27)+kd1*J*y(20)+L2*J^4/(J^4+delta^4)*y(26)+L3*y(30)-(v1*k11+ku1+L1+L4*J^4/(J^4+epsilon^4))*y(28);%QD4
		dy(29)=r2*k10*A*y(14)+v2*k11*y(30)+L4*J^4/(J^4+epsilon^4)*y(27)+L5*y(31)-(v2*k9+r2*k12*A+ku2+L3+L6*J^4/(J^4+mu^4))*y(29);%QD5
		dy(30)=r2*k12*A*y(29)+kd2*J*y(22)+L4*J^4/(J^4+epsilon^4)*y(28)+L5*y(32)-(v2*k11+ku2+L3+L6*J^4/(J^4+mu^4))*y(30);%QD6
		dy(31)=r3*k10*A*y(16)+v3*k11*y(32)+L6*J^4/(J^4+mu^4)*y(29)-(v3*k9+r3*k12*A+ku3+L5)*y(31);%QD7
		dy(32)=r3*k12*A*y(31)+kd3*J*y(24)+L6*J^4/(J^4+mu^4)*y(30)-(v3*k11+ku3+L5)*y(32);%QD8
		dy(33)=k1*y(34)-(k2*A+H1)*y(33);%D1
		dy(34)=k2*A*y(33)+k3*y(35)+H2*y(2)+alpha*H2*y(10)-(k1+k4*A)*y(34);%D2
		dy(35)=k4*A*y(34)+k5*y(36)+H2*y(17)+alpha*H2*y(25)-(k3+k6*A)*y(35);%D3
		dy(36)=k6*A*y(35)+H2*y(18)+alpha*H2*y(26)-(k5+H3)*y(36);%D4
		dy(37)=H3*y(36)-H4*y(37);%Z
	end
	ode=@ model;
end