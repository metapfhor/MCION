function ode = modelODEP2X4Fortran(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(17,1);
		A=ATP(t);
		dy(1)=k1*y(2)+L1*y(3)+H1*y(13)+H4*y(17)-(k2*A+L2*(J/(J+delta)))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(7)+L1*y(4)-(k1+k4*A+H2+L2*(J/(J+delta)))*y(2);%C2
		dy(3)=k7*y(4)+L2*(J/(J+delta))*y(1)+L3*y(5)-(k8*A+L1+L4*(J/(J+epsilon)))*y(3);%C3
		dy(4)=k8*A*y(3)+k9*y(9)+L2*(J/(J+delta))*y(2)+L3*y(6)-(k7+k10*A+L1+L4*(J/(J+epsilon)))*y(4);%C4
		dy(5)=k13*y(6)+L4*(J/(J+epsilon))*y(3)-(k14*A+L3)*y(5);%C5
		dy(6)=k14*A*y(5)+k15*y(11)+L4*(J/(J+epsilon))*y(4)-(k13+k16*A+L3)*y(6);%C6
		dy(7)=k4*A*y(2)+k5*y(8)+L1*y(9)-(k3+k6*A+H2+L2*(J/(J+delta)))*y(7);%Q1
		dy(8)=k6*A*y(7)+L1*y(10)-(k5+H2+L2*(J/(J+delta)))*y(8);%Q2
		dy(9)=k10*A*y(4)+k11*y(10)+L2*(J/(J+delta))*y(7)+L3*y(11)-(k9+k12*A+L1+L4*(J/(J+epsilon)))*y(9);%Q3
		dy(10)=k12*A*y(9)+L2*(J/(J+delta))*y(8)+L3*y(12)-(k11+L1+L4*(J/(J+epsilon)))*y(10);%Q4
		dy(11)=k16*A*y(6)+k17*y(12)+L4*(J/(J+epsilon))*y(9)-(k15+k18*A+L3)*y(11);%Q5
		dy(12)=k18*A*y(11)+L4*(J/(J+epsilon))*y(10)-(k17+L3)*y(12);%Q6
		dy(13)=k1*y(14)-(k2*A+H1)*y(13);%D1
		dy(14)=k2*A*y(13)+k3*y(15)+H2*y(2)-(k1+k4*A)*y(14);%D2
		dy(15)=k4*A*y(14)+k5*y(16)+H2*y(7)-(k3+k6*A)*y(15);%D3
		dy(16)=k6*A*y(15)+H2*y(8)-(k5+H3)*y(16);%D4
		dy(17)=H3*y(16)-H4*y(17);%Z
	end
	ode=@ model;
end