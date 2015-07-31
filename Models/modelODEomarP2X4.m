function ode = modelODEomarP2X4(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k21 k22 k23 k24 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryomarP2X4(y);
		dy=zeros(21,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L1*y(3)+H1*y(17)+H4*y(21)-(k2*A+L2*J^n1/(J^n1+delta^n1))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+L1*y(4)-(k1+k4*A+H2+L2*J^n1/(J^n1+delta^n1))*y(2);%C2
		dy(3)=k7*y(4)+L2*J^n1/(J^n1+delta^n1)*y(1)+L3*y(5)-(k8*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(3);%C3
		dy(4)=k8*A*y(3)+k9*y(11)+L2*J^n1/(J^n1+delta^n1)*y(2)+L3*y(6)-(k7+k10*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(4);%C4
		dy(5)=k13*y(6)+L4*J^n2/(J^n2+epsilon^n2)*y(3)+L5*y(7)-(k14*A+L3+L6*J^n3/(J^n3+mu^n3))*y(5);%C5
		dy(6)=k14*A*y(5)+k15*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(4)+L5*y(8)-(k13+k16*A+L3+L6*J^n3/(J^n3+mu^n3))*y(6);%C6
		dy(7)=k19*y(8)+L6*J^n3/(J^n3+mu^n3)*y(5)-(k20*A+L5)*y(7);%C7
		dy(8)=k20*A*y(7)+k21*y(15)+L6*J^n3/(J^n3+mu^n3)*y(6)-(k19+k22*A+L5)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+L1*y(11)-(k3+k6*A+H2+L2*J^n1/(J^n1+delta^n1))*y(9);%Q1
		dy(10)=k6*A*y(9)+L1*y(12)-(k5+H2+L2*J^n1/(J^n1+delta^n1))*y(10);%Q2
		dy(11)=k10*A*y(4)+k11*y(12)+L2*J^n1/(J^n1+delta^n1)*y(9)+L3*y(13)-(k9+k12*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(11);%Q3
		dy(12)=k12*A*y(11)+L2*J^n1/(J^n1+delta^n1)*y(10)+L3*y(14)-(k11+L1+L4*J^n2/(J^n2+epsilon^n2))*y(12);%Q4
		dy(13)=k16*A*y(6)+k17*y(14)+L4*J^n2/(J^n2+epsilon^n2)*y(11)+L5*y(15)-(k15+k18*A+L3+L6*J^n3/(J^n3+mu^n3))*y(13);%Q5
		dy(14)=k18*A*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(12)+L5*y(16)-(k17+L3+L6*J^n3/(J^n3+mu^n3))*y(14);%Q6
		dy(15)=k22*A*y(8)+k23*y(16)+L6*J^n3/(J^n3+mu^n3)*y(13)-(k21+k24*A+L5)*y(15);%Q7
		dy(16)=k24*A*y(15)+L6*J^n3/(J^n3+mu^n3)*y(14)-(k23+L5)*y(16);%Q8
		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
		dy(21)=H3*y(20)-H4*y(21);%Z
	end
	ode=@ model;
end