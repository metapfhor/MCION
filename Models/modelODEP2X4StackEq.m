function ode = modelODEP2X4StackEq(ton,toff)
global d1 d2 d3 d4 d5 d6 d7 d8 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H11 H12 H13 H14 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4StackEq(y);
		dy=zeros(25,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L11*y(3)+H11*y(17)+H4*y(25)-(k2*A+L21*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+ks1*y(18)+L12*y(4)-(k1+k4*A+kd1+L22*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=k7*y(4)+L21*J^4/(J^4+delta^4)*y(1)+L31*y(5)-(k8*A+L11+L41*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=k8*A*y(3)+k9*y(11)+ks2*y(20)+L22*J^4/(J^4+delta^4)*y(2)+L32*y(6)+H12*y(19)-(k7+k10*A+kd2+L12+L42*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=k13*y(6)+L41*J^4/(J^4+epsilon^4)*y(3)+L51*y(7)-(k14*A+L31+L61*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=k14*A*y(5)+k15*y(13)+ks3*y(22)+L42*J^4/(J^4+epsilon^4)*y(4)+L52*y(8)+H13*y(21)-(k13+k16*A+kd3+L32+L62*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=k19*y(8)+L61*J^4/(J^4+mu^4)*y(5)-(k20*A+L51)*y(7);%C7
		dy(8)=k20*A*y(7)+k21*y(15)+ks4*y(24)+L62*J^4/(J^4+mu^4)*y(6)+H14*y(23)-(k19+k22*A+kd4+L52)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+ks1*y(18)+L13*y(11)-(k3+k6*A+kd1+L23*J^4/(J^4+delta^4))*y(9);%Q1
		dy(10)=k6*A*y(9)+ks1*y(18)+L14*y(12)-(k5+kd1+L24*J^4/(J^4+delta^4))*y(10);%Q2
		dy(11)=k10*A*y(4)+k11*y(12)+ks2*y(20)+L23*J^4/(J^4+delta^4)*y(9)+L33*y(13)-(k9+k12*A+kd2+L13+L43*J^4/(J^4+epsilon^4))*y(11);%Q3
		dy(12)=k12*A*y(11)+ks2*y(20)+L24*J^4/(J^4+delta^4)*y(10)+L34*y(14)-(k11+kd2+L14+L44*J^4/(J^4+epsilon^4))*y(12);%Q4
		dy(13)=k16*A*y(6)+k17*y(14)+ks3*y(22)+L43*J^4/(J^4+epsilon^4)*y(11)+L53*y(15)-(k15+k18*A+kd3+L33+L63*J^4/(J^4+mu^4))*y(13);%Q5
		dy(14)=k18*A*y(13)+ks3*y(22)+L44*J^4/(J^4+epsilon^4)*y(12)+L54*y(16)-(k17+kd3+L34+L64*J^4/(J^4+mu^4))*y(14);%Q6
		dy(15)=k22*A*y(8)+k23*y(16)+ks4*y(24)+L63*J^4/(J^4+mu^4)*y(13)-(k21+k24*A+kd4+L53)*y(15);%Q7
		dy(16)=k24*A*y(15)+ks4*y(24)+L64*J^4/(J^4+mu^4)*y(14)-(k23+kd4+L54)*y(16);%Q8
		dy(17)=d1*y(18)-(d2*A+H11)*y(17);%D11
		dy(18)=d2*A*y(17)+kd1*y(2)+kd1*y(9)+kd1*y(10)-(d1+ks1+ks1+ks1+H3)*y(18);%D12
		dy(19)=d3*y(20)-(d4*A+H12)*y(19);%D21
		dy(20)=d4*A*y(19)+kd2*y(4)+kd2*y(11)+kd2*y(12)-(d3+ks2+ks2+ks2+H3)*y(20);%D22
		dy(21)=d5*y(22)-(d6*A+H13)*y(21);%D31
		dy(22)=d6*A*y(21)+kd3*y(6)+kd3*y(13)+kd3*y(14)-(d5+ks3+ks3+ks3+H3)*y(22);%D32
		dy(23)=d7*y(24)-(d8*A+H14)*y(23);%D41
		dy(24)=d8*A*y(23)+kd4*y(8)+kd4*y(15)+kd4*y(16)-(d7+ks4+ks4+ks4+H3)*y(24);%D42
		dy(25)=H3*y(18)+H3*y(20)+H3*y(22)+H3*y(24)-H4*y(25);%Z
	end
	ode=@ model;
end