function ode = modelPulseODEP2X4Inact12(ton,toff)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64 H0 H5 H2 H1 H3 H4 W2 g1 g2 E1 E2 delta epsilon mu A J V A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)

		dy=zeros(22,1);
		A=ATP(t);
		J=IVM(t);
		setAuxiliaryP2X4Inact12(y);
		dy(1)=H5*y(2)+H4*y(22)-(H0+W2*J^4/(J^4+delta^4))*y(1);%C0
		dy(2)=H0*y(1)+k1*y(3)+L11*y(4)+H1*y(18)-(H5+k2*A+L21*J^4/(J^4+delta^4))*y(2);%C1
		dy(3)=k2*A*y(2)+k3*y(10)+H1*y(19)+L12*y(5)-(k1+k4*A+H2+L22*J^4/(J^4+delta^4))*y(3);%C2
		dy(4)=k7*y(5)+W2*J^4/(J^4+delta^4)*y(1)+L21*J^4/(J^4+delta^4)*y(2)+L31*y(6)-(k8*A+L11+L41*J^4/(J^4+epsilon^4))*y(4);%C3
		dy(5)=k8*A*y(4)+k9*y(12)+L22*J^4/(J^4+delta^4)*y(3)+L32*y(7)-(k7+k10*A+L12+L42*J^4/(J^4+epsilon^4))*y(5);%C4
		dy(6)=k13*y(7)+L41*J^4/(J^4+epsilon^4)*y(4)+L51*y(8)-(k14*A+L31+L61*J^4/(J^4+mu^4))*y(6);%C5
		dy(7)=k14*A*y(6)+k15*y(14)+L42*J^4/(J^4+epsilon^4)*y(5)+L52*y(9)-(k13+k16*A+L32+L62*J^4/(J^4+mu^4))*y(7);%C6
		dy(8)=k19*y(9)+L61*J^4/(J^4+mu^4)*y(6)-(k20*A+L51)*y(8);%C7
		dy(9)=k20*A*y(8)+k21*y(16)+L62*J^4/(J^4+mu^4)*y(7)-(k19+k22*A+L52)*y(9);%C8
		dy(10)=k4*A*y(3)+k5*y(11)+H1*y(20)+L13*y(12)-(k3+k6*A+H2+L23*J^4/(J^4+delta^4))*y(10);%Q1
		dy(11)=k6*A*y(10)+H1*y(21)+L14*y(13)-(k5+H2+L24*J^4/(J^4+delta^4))*y(11);%Q2
		dy(12)=k10*A*y(5)+k11*y(13)+L23*J^4/(J^4+delta^4)*y(10)+L33*y(14)-(k9+k12*A+L13+L43*J^4/(J^4+epsilon^4))*y(12);%Q3
		dy(13)=k12*A*y(12)+L24*J^4/(J^4+delta^4)*y(11)+L34*y(15)-(k11+L14+L44*J^4/(J^4+epsilon^4))*y(13);%Q4
		dy(14)=k16*A*y(7)+k17*y(15)+L43*J^4/(J^4+epsilon^4)*y(12)+L53*y(16)-(k15+k18*A+L33+L63*J^4/(J^4+mu^4))*y(14);%Q5
		dy(15)=k18*A*y(14)+L44*J^4/(J^4+epsilon^4)*y(13)+L54*y(17)-(k17+L34+L64*J^4/(J^4+mu^4))*y(15);%Q6
		dy(16)=k22*A*y(9)+k23*y(17)+L63*J^4/(J^4+mu^4)*y(14)-(k21+k24*A+L53)*y(16);%Q7
		dy(17)=k24*A*y(16)+L64*J^4/(J^4+mu^4)*y(15)-(k23+L54)*y(17);%Q8
		dy(18)=k1*y(19)-(k2*A+H1)*y(18);%D11
		dy(19)=k2*A*y(18)+k3*y(20)+H2*y(3)-(k1+k4*A+H1)*y(19);%D12
		dy(20)=k4*A*y(19)+k5*y(21)+H2*y(10)-(k3+k6*A+H1)*y(20);%D13
		dy(21)=k6*A*y(20)+H2*y(11)-(k5+H1+H3)*y(21);%D14
		dy(22)=H3*y(21)-H4*y(22);%Z
	end
	ode=@ model;
end