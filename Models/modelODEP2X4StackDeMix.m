function ode = modelODEP2X4StackDeMix(ton,toff)
global d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H11 H12 H13 H14 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 alpha A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4StackDeMix(y);
		dy=zeros(33,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L11*y(3)+H11*y(17)+H4*y(33)-(k2*A+L21*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+ks1*y(18)+L12*y(4)-(k1+k4*A+kd1+L22*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=k7*y(4)+L21*J^4/(J^4+delta^4)*y(1)+L31*y(5)-(k8*A+L11+L41*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=k8*A*y(3)+k9*y(11)+ks2*y(22)+L22*J^4/(J^4+delta^4)*y(2)+L32*y(6)+H12*y(21)-(k7+k10*A+kd2+L12+L42*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=k13*y(6)+L41*J^4/(J^4+epsilon^4)*y(3)+L51*y(7)+H13*y(25)-(k14*A+L31+L61*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=k14*A*y(5)+k15*y(13)+ks3*y(26)+L42*J^4/(J^4+epsilon^4)*y(4)+L52*y(8)-(k13+k16*A+kd3+L32+L62*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=k19*y(8)+L61*J^4/(J^4+mu^4)*y(5)+H14*y(29)-(k20*A+L51)*y(7);%C7
		dy(8)=k20*A*y(7)+k21*y(15)+ks4*y(30)+L62*J^4/(J^4+mu^4)*y(6)-(k19+k22*A+kd4+L52)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+ks1*y(19)+L13*y(11)-(k3+k6*A+kd1+L23*J^4/(J^4+delta^4))*y(9);%Q1
		dy(10)=k6*A*y(9)+ks1*y(20)+L14*y(12)-(k5+kd1+L24*J^4/(J^4+delta^4))*y(10);%Q2
		dy(11)=k10*A*y(4)+k11*y(12)+ks2*y(23)+L23*J^4/(J^4+delta^4)*y(9)+L33*y(13)-(k9+k12*A+kd2+L13+L43*J^4/(J^4+epsilon^4))*y(11);%Q3
		dy(12)=k12*A*y(11)+ks2*y(24)+L24*J^4/(J^4+delta^4)*y(10)+L34*y(14)-(k11+kd2+L14+L44*J^4/(J^4+epsilon^4))*y(12);%Q4
		dy(13)=k16*A*y(6)+k17*y(14)+ks3*y(27)+L43*J^4/(J^4+epsilon^4)*y(11)+L53*y(15)-(k15+k18*A+kd3+L33+L63*J^4/(J^4+mu^4))*y(13);%Q5
		dy(14)=k18*A*y(13)+ks3*y(28)+L44*J^4/(J^4+epsilon^4)*y(12)+L54*y(16)-(k17+kd3+L34+L64*J^4/(J^4+mu^4))*y(14);%Q6
		dy(15)=k22*A*y(8)+k23*y(16)+ks4*y(31)+L63*J^4/(J^4+mu^4)*y(13)-(k21+k24*A+kd4+L53)*y(15);%Q7
		dy(16)=k24*A*y(15)+ks4*y(32)+L64*J^4/(J^4+mu^4)*y(14)-(k23+kd4+L54)*y(16);%Q8
		dy(17)=d1*y(18)+d19*y(18)+L11*y(21)-(d2*A+d20*A+alpha*L21*J^4/(J^4+delta^4)+H11)*y(17);%D11
		dy(18)=d2*A*y(17)+d3*y(19)+d20*A*y(17)+d21*y(19)+kd1*y(2)+L12*y(22)-(d1+d4*A+d19+d22*A+ks1+alpha*L22*J^4/(J^4+delta^4))*y(18);%D12
		dy(19)=d4*A*y(18)+d5*y(20)+d22*A*y(18)+d23*y(20)+kd1*y(9)+L13*y(23)-(d3+d6*A+d21+d24*A+ks1+alpha*L23*J^4/(J^4+delta^4))*y(19);%D13
		dy(20)=d6*A*y(19)+d24*A*y(19)+kd1*y(10)+L14*y(24)-(d5+d23+ks1+alpha*L24*J^4/(J^4+delta^4)+H3)*y(20);%D14
		dy(21)=d7*y(22)+alpha*L21*J^4/(J^4+delta^4)*y(17)+L31*y(26)-(d8*A+L11+alpha*L41*J^4/(J^4+epsilon^4)+H12)*y(21);%D21
		dy(22)=d8*A*y(21)+d9*y(23)+kd2*y(4)+alpha*L22*J^4/(J^4+delta^4)*y(18)+L32*y(25)-(d7+d10*A+ks2+L12+alpha*L42*J^4/(J^4+epsilon^4))*y(22);%D22
		dy(23)=d10*A*y(22)+d11*y(24)+kd2*y(11)+alpha*L23*J^4/(J^4+delta^4)*y(19)+L33*y(27)-(d9+d12*A+ks2+L13+alpha*L43*J^4/(J^4+epsilon^4))*y(23);%D23
		dy(24)=d12*A*y(23)+kd2*y(12)+alpha*L24*J^4/(J^4+delta^4)*y(20)+L34*y(28)-(d11+ks2+L14+alpha*L44*J^4/(J^4+epsilon^4))*y(24);%D24
		dy(25)=d13*y(26)+alpha*L42*J^4/(J^4+epsilon^4)*y(22)+L51*y(29)-(d14*A+L32+alpha*L61*J^4/(J^4+mu^4)+H13)*y(25);%D31
		dy(26)=d14*A*y(25)+d15*y(27)+kd3*y(6)+alpha*L41*J^4/(J^4+epsilon^4)*y(21)+L52*y(30)-(d13+d16*A+ks3+L31+alpha*L62*J^4/(J^4+mu^4))*y(26);%D32
		dy(27)=d16*A*y(26)+d17*y(28)+kd3*y(13)+alpha*L43*J^4/(J^4+epsilon^4)*y(23)+L53*y(31)-(d15+d18*A+ks3+L33+alpha*L63*J^4/(J^4+mu^4))*y(27);%D33
		dy(28)=d18*A*y(27)+kd3*y(14)+alpha*L44*J^4/(J^4+epsilon^4)*y(24)+L54*y(32)-(d17+ks3+L34+alpha*L64*J^4/(J^4+mu^4))*y(28);%D34
		dy(29)=alpha*L61*J^4/(J^4+mu^4)*y(25)-(L51+H14)*y(29);%D41
		dy(30)=kd4*y(8)+alpha*L62*J^4/(J^4+mu^4)*y(26)-(ks4+L52)*y(30);%D42
		dy(31)=kd4*y(15)+alpha*L63*J^4/(J^4+mu^4)*y(27)-(ks4+L53)*y(31);%D43
		dy(32)=kd4*y(16)+alpha*L64*J^4/(J^4+mu^4)*y(28)-(ks4+L54)*y(32);%D44
		dy(33)=H3*y(20)-H4*y(33);%Z
	end
	ode=@ model;
end