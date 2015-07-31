function ode = modelPulseODEP2XInact2(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 W2 H0 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A A V A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)

		dy=zeros(34,1);
		A=ATP(t);
		J=IVM(t);
		setAuxiliaryP2XInact2(y);
		dy(1)=H5*y(2)-(H0+W2*A^4/(A^4+delta^4))*y(1);%C0
		dy(2)=H0*y(1)+k1*y(3)+L11*y(4)+ks1*y(18)+H4*y(34)-(H5+k2*A+L21*A^4/(A^4+delta^4))*y(2);%C1
		dy(3)=k2*A*y(2)+k3*y(10)+ks1*y(19)+L12*y(5)-(k1+k4*A+kd1+L22*A^4/(A^4+delta^4))*y(3);%C2
		dy(4)=k7*y(5)+W2*A^4/(A^4+delta^4)*y(1)+L21*A^4/(A^4+delta^4)*y(2)+L31*y(6)+ks2*y(22)-(k8*A+L11+L41*A^4/(A^4+epsilon^4))*y(4);%C3
		dy(5)=k8*A*y(4)+k9*y(12)+ks2*y(23)+L22*A^4/(A^4+delta^4)*y(3)+L32*y(7)-(k7+k10*A+kd2+L12+L42*A^4/(A^4+epsilon^4))*y(5);%C4
		dy(6)=k13*y(7)+L41*A^4/(A^4+epsilon^4)*y(4)+L51*y(8)+ks3*y(26)-(k14*A+L31+L61*A^4/(A^4+mu^4))*y(6);%C5
		dy(7)=k14*A*y(6)+k15*y(14)+ks3*y(27)+L42*A^4/(A^4+epsilon^4)*y(5)+L52*y(9)-(k13+k16*A+kd3+L32+L62*A^4/(A^4+mu^4))*y(7);%C6
		dy(8)=k19*y(9)+L61*A^4/(A^4+mu^4)*y(6)+ks4*y(30)-(k20*A+L51)*y(8);%C7
		dy(9)=k20*A*y(8)+k21*y(16)+ks4*y(31)+L62*A^4/(A^4+mu^4)*y(7)-(k19+k22*A+kd4+L52)*y(9);%C8
		dy(10)=k4*A*y(3)+k5*y(11)+ks1*y(20)+L13*y(12)-(k3+k6*A+kd1+L23*A^4/(A^4+delta^4))*y(10);%Q1
		dy(11)=k6*A*y(10)+ks1*y(21)+L14*y(13)-(k5+kd1+L24*A^4/(A^4+delta^4))*y(11);%Q2
		dy(12)=k10*A*y(5)+k11*y(13)+ks2*y(24)+L23*A^4/(A^4+delta^4)*y(10)+L33*y(14)-(k9+k12*A+kd2+L13+L43*A^4/(A^4+epsilon^4))*y(12);%Q3
		dy(13)=k12*A*y(12)+ks2*y(25)+L24*A^4/(A^4+delta^4)*y(11)+L34*y(15)-(k11+kd2+L14+L44*A^4/(A^4+epsilon^4))*y(13);%Q4
		dy(14)=k16*A*y(7)+k17*y(15)+ks3*y(28)+L43*A^4/(A^4+epsilon^4)*y(12)+L53*y(16)-(k15+k18*A+kd3+L33+L63*A^4/(A^4+mu^4))*y(14);%Q5
		dy(15)=k18*A*y(14)+ks3*y(29)+L44*A^4/(A^4+epsilon^4)*y(13)+L54*y(17)-(k17+kd3+L34+L64*A^4/(A^4+mu^4))*y(15);%Q6
		dy(16)=k22*A*y(9)+k23*y(17)+ks4*y(32)+L63*A^4/(A^4+mu^4)*y(14)-(k21+k24*A+kd4+L53)*y(16);%Q7
		dy(17)=k24*A*y(16)+ks4*y(33)+L64*A^4/(A^4+mu^4)*y(15)-(k23+kd4+L54)*y(17);%Q8
		dy(18)=k1*y(19)+L11*y(22)-(k2*A+L21*A^4/(A^4+delta^4)+ks1)*y(18);%D11
		dy(19)=k2*A*y(18)+k3*y(20)+kd1*y(3)+L12*y(23)-(k1+k4*A+ks1+L22*A^4/(A^4+delta^4))*y(19);%D12
		dy(20)=k4*A*y(19)+k5*y(21)+kd1*y(10)+L13*y(24)-(k3+k6*A+ks1+L23*A^4/(A^4+delta^4))*y(20);%D13
		dy(21)=k6*A*y(20)+kd1*y(11)+L14*y(25)-(k5+ks1+L24*A^4/(A^4+delta^4)+H3)*y(21);%D14
		dy(22)=k7*y(23)+L21*A^4/(A^4+delta^4)*y(18)+L31*y(27)-(k8*A+L11+L41*A^4/(A^4+epsilon^4)+ks2)*y(22);%D21
		dy(23)=k8*A*y(22)+k9*y(24)+kd2*y(5)+L22*A^4/(A^4+delta^4)*y(19)+L32*y(26)-(k7+k10*A+ks2+L12+L42*A^4/(A^4+epsilon^4))*y(23);%D22
		dy(24)=k10*A*y(23)+k11*y(25)+kd2*y(12)+L23*A^4/(A^4+delta^4)*y(20)+L33*y(28)-(k9+k12*A+ks2+L13+L43*A^4/(A^4+epsilon^4))*y(24);%D23
		dy(25)=k12*A*y(24)+kd2*y(13)+L24*A^4/(A^4+delta^4)*y(21)+L34*y(29)-(k11+ks2+L14+L44*A^4/(A^4+epsilon^4)+H3D)*y(25);%D24
		dy(26)=k13*y(27)+L42*A^4/(A^4+epsilon^4)*y(23)+L51*y(30)-(k14*A+L32+L61*A^4/(A^4+mu^4)+ks3)*y(26);%D31
		dy(27)=k14*A*y(26)+k15*y(28)+kd3*y(7)+L41*A^4/(A^4+epsilon^4)*y(22)+L52*y(31)-(k13+k16*A+ks3+L31+L62*A^4/(A^4+mu^4))*y(27);%D32
		dy(28)=k16*A*y(27)+k17*y(29)+kd3*y(14)+L43*A^4/(A^4+epsilon^4)*y(24)+L53*y(32)-(k15+k18*A+ks3+L33+L63*A^4/(A^4+mu^4))*y(28);%D33
		dy(29)=k18*A*y(28)+kd3*y(15)+L44*A^4/(A^4+epsilon^4)*y(25)+L54*y(33)-(k17+ks3+L34+L64*A^4/(A^4+mu^4)+H3D)*y(29);%D34
		dy(30)=k19*y(31)+L61*A^4/(A^4+mu^4)*y(26)-(k20*A+L51+ks4)*y(30);%D41
		dy(31)=k20*A*y(30)+k21*y(32)+kd4*y(9)+L62*A^4/(A^4+mu^4)*y(27)-(k19+k22*A+ks4+L52)*y(31);%D42
		dy(32)=k22*A*y(31)+k23*y(33)+kd4*y(16)+L63*A^4/(A^4+mu^4)*y(28)-(k21+k24*A+ks4+L53)*y(32);%D43
		dy(33)=k24*A*y(32)+kd4*y(17)+L64*A^4/(A^4+mu^4)*y(29)-(k23+ks4+L54+H3D)*y(33);%D44
		dy(34)=H3*y(21)+H3D*y(25)+H3D*y(29)+H3D*y(33)-H4*y(34);%Z
	end
	ode=@ model;
end