function ode = modelODEP2X4Inact1factor(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 W1 W2 H0 H11 H5 kd1 ks1 H3 H4 g1 g2 E1 E2 r1 r2 r3 v1 v2 v3 rho1 rho2 rho3 gamma1 gamma2 gamma3 delta epsilon mu A J V A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4Inact1factor(y);
		dy=zeros(22,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=H5*y(2)+W1*y(4)-(H0+W2*J^4/(J^4+delta^4))*y(1);%C0
		dy(2)=H0*y(1)+k1*y(3)+L1*y(4)+H11*y(18)+H4*y(22)-(H5+k2*A+L2*J^4/(J^4+delta^4))*y(2);%C1
		dy(3)=k2*A*y(2)+k3*y(10)+ks1*y(19)+gamma1*L1*y(5)-(k1+k4*A+kd1+L2*J^4/(J^4+delta^4))*y(3);%C2
		dy(4)=v1*k1*y(5)+W2*J^4/(J^4+delta^4)*y(1)+L2*J^4/(J^4+delta^4)*y(2)+L3*y(6)-(r1*k2*A+W1+L1+L4*J^4/(J^4+epsilon^4))*y(4);%C3
		dy(5)=r1*k2*A*y(4)+v1*k3*y(12)+L2*J^4/(J^4+delta^4)*y(3)+L3*y(7)-(v1*k1+r1*k4*A+gamma1*L1+L4*J^4/(J^4+epsilon^4))*y(5);%C4
		dy(6)=v2*k1*y(7)+L4*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)-(r2*k2*A+L3+L6*J^4/(J^4+mu^4))*y(6);%C5
		dy(7)=r2*k2*A*y(6)+v2*k3*y(14)+L4*J^4/(J^4+epsilon^4)*y(5)+L5*y(9)-(v2*k1+r2*k4*A+L3+L6*J^4/(J^4+mu^4))*y(7);%C6
		dy(8)=v3*k1*y(9)+L6*J^4/(J^4+mu^4)*y(6)-(r3*k2*A+L5)*y(8);%C7
		dy(9)=r3*k2*A*y(8)+v3*k3*y(16)+L6*J^4/(J^4+mu^4)*y(7)-(v3*k1+r3*k4*A+L5)*y(9);%C8
		dy(10)=k4*A*y(3)+k5*y(11)+ks1*y(20)+gamma2*L1*y(12)-(k3+k6*A+kd1+L2*J^4/(J^4+delta^4))*y(10);%Q1
		dy(11)=k6*A*y(10)+ks1*y(21)+gamma3*L1*y(13)-(k5+kd1+L2*J^4/(J^4+delta^4))*y(11);%Q2
		dy(12)=r1*k4*A*y(5)+v1*k5*y(13)+L2*J^4/(J^4+delta^4)*y(10)+L3*y(14)-(v1*k3+r1*k6*A+gamma2*L1+L4*J^4/(J^4+epsilon^4))*y(12);%Q3
		dy(13)=r1*k6*A*y(12)+L2*J^4/(J^4+delta^4)*y(11)+L3*y(15)-(v1*k5+gamma3*L1+L4*J^4/(J^4+epsilon^4))*y(13);%Q4
		dy(14)=r2*k4*A*y(7)+v2*k5*y(15)+L4*J^4/(J^4+epsilon^4)*y(12)+L5*y(16)-(v2*k3+r2*k6*A+L3+L6*J^4/(J^4+mu^4))*y(14);%Q5
		dy(15)=r2*k6*A*y(14)+L4*J^4/(J^4+epsilon^4)*y(13)+L5*y(17)-(v2*k5+L3+L6*J^4/(J^4+mu^4))*y(15);%Q6
		dy(16)=r3*k4*A*y(9)+v3*k5*y(17)+L6*J^4/(J^4+mu^4)*y(14)-(v3*k3+r3*k6*A+L5)*y(16);%Q7
		dy(17)=r3*k6*A*y(16)+L6*J^4/(J^4+mu^4)*y(15)-(v3*k5+L5)*y(17);%Q8
		dy(18)=k1*y(19)-(k2*A+H11)*y(18);%D11
		dy(19)=k2*A*y(18)+k3*y(20)+kd1*y(3)-(k1+k4*A+ks1)*y(19);%D12
		dy(20)=k4*A*y(19)+k5*y(21)+kd1*y(10)-(k3+k6*A+ks1)*y(20);%D13
		dy(21)=k6*A*y(20)+kd1*y(11)-(k5+ks1+H3)*y(21);%D14
		dy(22)=H3*y(21)-H4*y(22);%Z
	end
	ode=@ model;
end