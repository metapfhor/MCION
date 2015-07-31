function ode = modelPulseODEomarP2X4coop(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k21 k22 k23 k24 L10 L20 L30 L40 L50 L60 L11 L21 L31 L41 L51 L61 L12 L22 L32 L42 L52 L62 L13 L23 L33 L43 L53 L63 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 a1 A0 J0 IVMon IVMoff;
	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heaviside(t-ton(i))-heaviside(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryomarP2X4coop(y);
		dy=zeros(21,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L10*y(3)+H1*y(17)+H4*y(21)-(k2*A+L20*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+L11*y(4)-(k1+k4*A+H2+L21*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=k7*y(4)+L20*J^4/(J^4+delta^4)*y(1)+L30*y(5)-(k8*A+L10+L40*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=k8*A*y(3)+k9*y(11)+L21*J^4/(J^4+delta^4)*y(2)+L31*y(6)-(k7+k10*A+L11+L41*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=k13*y(6)+L40*J^4/(J^4+epsilon^4)*y(3)+L50*y(7)-(k14*A+L30+L60*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=k14*A*y(5)+k15*y(13)+L41*J^4/(J^4+epsilon^4)*y(4)+L51*y(8)-(k13+k16*A+L31+L61*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=k19*y(8)+L60*J^4/(J^4+mu^4)*y(5)-(k20*A+L50)*y(7);%C7
		dy(8)=k20*A*y(7)+k21*y(15)+L61*J^4/(J^4+mu^4)*y(6)-(k19+k22*A+L51)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+L12*y(11)-(k3+k6*A+H2+L22*J^4/(J^4+delta^4))*y(9);%Q1
		dy(10)=k6*A*y(9)+L13*y(12)-(k5+H2+L23*J^4/(J^4+delta^4))*y(10);%Q2
		dy(11)=k10*A*y(4)+k11*y(12)+L22*J^4/(J^4+delta^4)*y(9)+L32*y(13)-(k9+k12*A+L12+L42*J^4/(J^4+epsilon^4))*y(11);%Q3
		dy(12)=k12*A*y(11)+L23*J^4/(J^4+delta^4)*y(10)+L33*y(14)-(k11+L13+L43*J^4/(J^4+epsilon^4))*y(12);%Q4
		dy(13)=k16*A*y(6)+k17*y(14)+L42*J^4/(J^4+epsilon^4)*y(11)+L52*y(15)-(k15+k18*A+L32+L62*J^4/(J^4+mu^4))*y(13);%Q5
		dy(14)=k18*A*y(13)+L43*J^4/(J^4+epsilon^4)*y(12)+L53*y(16)-(k17+L33+L63*J^4/(J^4+mu^4))*y(14);%Q6
		dy(15)=k22*A*y(8)+k23*y(16)+L62*J^4/(J^4+mu^4)*y(13)-(k21+k24*A+L52)*y(15);%Q7
		dy(16)=k24*A*y(15)+L63*J^4/(J^4+mu^4)*y(14)-(k23+L53)*y(16);%Q8
		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
		dy(21)=H3*y(20)-H4*y(21);%Z
	end
	ode=@ model;
end