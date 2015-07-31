function ode = modelODEpotentP2X4poolindepfull(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 kd0 ku0 kd1 ku1 kd2 ku2 kd3 ku3 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3 A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliarypotentP2X4poolindepfull(y);
		dy=zeros(37,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+ku0*y(9)+L1*y(3)+H1*y(33)+H4*y(37)-(k2*A+kd0*J+L2*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(17)+ku0*y(10)+L1*y(4)-(k1+k4*A+kd0*J+H2+L2*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=v1*k1*y(4)+ku1*y(11)+L2*J^4/(J^4+delta^4)*y(1)+L3*y(5)-(r1*k2*A+kd1*J+L1+L4*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(19)+ku1*y(12)+L2*J^4/(J^4+delta^4)*y(2)+L3*y(6)-(v1*k1+r1*k4*A+kd1*J+L1+L4*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=v2*k1*y(6)+ku2*y(13)+L4*J^4/(J^4+epsilon^4)*y(3)+L5*y(7)-(r2*k2*A+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=r2*k2*A*y(5)+v2*k3*y(21)+ku2*y(14)+L4*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)-(v2*k1+r2*k4*A+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=v3*k1*y(8)+ku3*y(15)+L6*J^4/(J^4+mu^4)*y(5)-(r3*k2*A+kd3*J+L5)*y(7);%C7
		dy(8)=r3*k2*A*y(7)+v3*k3*y(23)+ku3*y(16)+L6*J^4/(J^4+mu^4)*y(6)-(v3*k1+r3*k4*A+kd3*J+L5)*y(8);%C8
		dy(9)=kd0*J*y(1)+L7*y(11)-(ku0+L8*J^4/(J^4+delta^4))*y(9);%CD1
		dy(10)=kd0*J*y(2)+L7*y(12)-(ku0+L8*J^4/(J^4+delta^4))*y(10);%CD2
		dy(11)=w1*k7*y(12)+kd1*J*y(3)+L8*J^4/(J^4+delta^4)*y(9)+L9*y(13)-(s1*k8*A+ku1+L7+L10*J^4/(J^4+epsilon^4))*y(11);%CD3
		dy(12)=s1*k8*A*y(11)+w1*k9*y(27)+kd1*J*y(4)+L8*J^4/(J^4+delta^4)*y(10)+L9*y(14)-(w1*k7+s1*k10*A+ku1+L7+L10*J^4/(J^4+epsilon^4))*y(12);%CD4
		dy(13)=w2*k7*y(14)+kd2*J*y(5)+L10*J^4/(J^4+epsilon^4)*y(11)+L11*y(15)-(s2*k8*A+ku2+L9+L12*J^4/(J^4+mu^4))*y(13);%CD5
		dy(14)=s2*k8*A*y(13)+w2*k9*y(29)+kd2*J*y(6)+L10*J^4/(J^4+epsilon^4)*y(12)+L11*y(16)-(w2*k7+s2*k10*A+ku2+L9+L12*J^4/(J^4+mu^4))*y(14);%CD6
		dy(15)=w3*k7*y(16)+kd3*J*y(7)+L12*J^4/(J^4+mu^4)*y(13)-(s3*k8*A+ku3+L11)*y(15);%CD7
		dy(16)=s3*k8*A*y(15)+w3*k9*y(31)+kd3*J*y(8)+L12*J^4/(J^4+mu^4)*y(14)-(w3*k7+s3*k10*A+ku3+L11)*y(16);%CD8
		dy(17)=k4*A*y(2)+k5*y(18)+ku0*y(25)+L1*y(19)-(k3+k6*A+kd0*J+H2+L2*J^4/(J^4+delta^4))*y(17);%Q1
		dy(18)=k6*A*y(17)+ku0*y(26)+L1*y(20)-(k5+kd0*J+H2+L2*J^4/(J^4+delta^4))*y(18);%Q2
		dy(19)=r1*k4*A*y(4)+v1*k5*y(20)+ku1*y(27)+L2*J^4/(J^4+delta^4)*y(17)+L3*y(21)-(v1*k3+r1*k6*A+kd1*J+L1+L4*J^4/(J^4+epsilon^4))*y(19);%Q3
		dy(20)=r1*k6*A*y(19)+ku1*y(28)+L2*J^4/(J^4+delta^4)*y(18)+L3*y(22)-(v1*k5+kd1*J+L1+L4*J^4/(J^4+epsilon^4))*y(20);%Q4
		dy(21)=r2*k4*A*y(6)+v2*k5*y(22)+ku2*y(29)+L4*J^4/(J^4+epsilon^4)*y(19)+L5*y(23)-(v2*k3+r2*k6*A+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(21);%Q5
		dy(22)=r2*k6*A*y(21)+ku2*y(30)+L4*J^4/(J^4+epsilon^4)*y(20)+L5*y(24)-(v2*k5+kd2*J+L3+L6*J^4/(J^4+mu^4))*y(22);%Q6
		dy(23)=r3*k4*A*y(8)+v3*k5*y(24)+ku3*y(31)+L6*J^4/(J^4+mu^4)*y(21)-(v3*k3+r3*k6*A+kd3*J+L5)*y(23);%Q7
		dy(24)=r3*k6*A*y(23)+ku3*y(32)+L6*J^4/(J^4+mu^4)*y(22)-(v3*k5+kd3*J+L5)*y(24);%Q8
		dy(25)=kd0*J*y(17)+L7*y(27)-(ku0+L8*J^4/(J^4+delta^4))*y(25);%QD1
		dy(26)=kd0*J*y(18)+L7*y(28)-(ku0+L8*J^4/(J^4+delta^4))*y(26);%QD2
		dy(27)=s1*k10*A*y(12)+w1*k11*y(28)+kd1*J*y(19)+L8*J^4/(J^4+delta^4)*y(25)+L9*y(29)-(w1*k9+s1*k12*A+ku1+L7+L10*J^4/(J^4+epsilon^4))*y(27);%QD3
		dy(28)=s1*k12*A*y(27)+kd1*J*y(20)+L8*J^4/(J^4+delta^4)*y(26)+L9*y(30)-(w1*k11+ku1+L7+L10*J^4/(J^4+epsilon^4))*y(28);%QD4
		dy(29)=s2*k10*A*y(14)+w2*k11*y(30)+kd2*J*y(21)+L10*J^4/(J^4+epsilon^4)*y(27)+L11*y(31)-(w2*k9+s2*k12*A+ku2+L9+L12*J^4/(J^4+mu^4))*y(29);%QD5
		dy(30)=s2*k12*A*y(29)+kd2*J*y(22)+L10*J^4/(J^4+epsilon^4)*y(28)+L11*y(32)-(w2*k11+ku2+L9+L12*J^4/(J^4+mu^4))*y(30);%QD6
		dy(31)=s3*k10*A*y(16)+w3*k11*y(32)+kd3*J*y(23)+L12*J^4/(J^4+mu^4)*y(29)-(w3*k9+s3*k12*A+ku3+L11)*y(31);%QD7
		dy(32)=s3*k12*A*y(31)+kd3*J*y(24)+L12*J^4/(J^4+mu^4)*y(30)-(w3*k11+ku3+L11)*y(32);%QD8
		dy(33)=k1*y(34)-(k2*A+H1)*y(33);%D1
		dy(34)=k2*A*y(33)+k3*y(35)+H2*y(2)-(k1+k4*A)*y(34);%D2
		dy(35)=k4*A*y(34)+k5*y(36)+H2*y(17)-(k3+k6*A)*y(35);%D3
		dy(36)=k6*A*y(35)+H2*y(18)-(k5+H3)*y(36);%D4
		dy(37)=H3*y(36)-H4*y(37);%Z
	end
	ode=@ model;
end