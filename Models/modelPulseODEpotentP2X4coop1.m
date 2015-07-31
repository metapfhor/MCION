function ode = modelPulseODEpotentP2X4coop1(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 L4 L5 L6 H1 H2 H3 H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 v1 v2 v3 r1 r2 r3 a1 a2 a3 rho1 rho2 rho3 A0 J0 IVMon IVMoff;
	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heaviside(t-ton(i))-heaviside(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliarypotentP2X4coop1(y);
		dy=zeros(21,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L1*y(3)+H1*y(17)+H4*y(21)-(k2*A+L2*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+L1*y(4)-(k1+k4*A+H2+rho1*L2*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=v1*k1*y(4)+L2*J^4/(J^4+delta^4)*y(1)+L3*y(5)-(r1*k2*A+L1+L4*J^4/(J^4+epsilon^4))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(11)+rho1*L2*J^4/(J^4+delta^4)*y(2)+L3*y(6)-(v1*k1+r1*k4*A+L1+L4*J^4/(J^4+epsilon^4))*y(4);%C4
		dy(5)=v2*k1*y(6)+L4*J^4/(J^4+epsilon^4)*y(3)+L5*y(7)-(r2*k2*A+L3+L6*J^4/(J^4+mu^4))*y(5);%C5
		dy(6)=r2*k2*A*y(5)+v2*k3*y(13)+L4*J^4/(J^4+epsilon^4)*y(4)+L5*y(8)-(v2*k1+r2*k4*A+L3+L6*J^4/(J^4+mu^4))*y(6);%C6
		dy(7)=v3*k1*y(8)+L6*J^4/(J^4+mu^4)*y(5)-(r3*k2*A+L5)*y(7);%C7
		dy(8)=r3*k2*A*y(7)+v3*k3*y(15)+L6*J^4/(J^4+mu^4)*y(6)-(v3*k1+r3*k4*A+L5)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+L1*y(11)-(k3+k6*A+H2+rho2*L2*J^4/(J^4+delta^4))*y(9);%Q1
		dy(10)=k6*A*y(9)+L1*y(12)-(k5+H2+rho3*L2*J^4/(J^4+delta^4))*y(10);%Q2
		dy(11)=r1*k4*A*y(4)+v1*k5*y(12)+rho2*L2*J^4/(J^4+delta^4)*y(9)+L3*y(13)-(v1*k3+r1*k6*A+L1+L4*J^4/(J^4+epsilon^4))*y(11);%Q3
		dy(12)=r1*k6*A*y(11)+rho3*L2*J^4/(J^4+delta^4)*y(10)+L3*y(14)-(v1*k5+L1+L4*J^4/(J^4+epsilon^4))*y(12);%Q4
		dy(13)=r2*k4*A*y(6)+v2*k5*y(14)+L4*J^4/(J^4+epsilon^4)*y(11)+L5*y(15)-(v2*k3+r2*k6*A+L3+L6*J^4/(J^4+mu^4))*y(13);%Q5
		dy(14)=r2*k6*A*y(13)+L4*J^4/(J^4+epsilon^4)*y(12)+L5*y(16)-(v2*k5+L3+L6*J^4/(J^4+mu^4))*y(14);%Q6
		dy(15)=r3*k4*A*y(8)+v3*k5*y(16)+L6*J^4/(J^4+mu^4)*y(13)-(v3*k3+r3*k6*A+L5)*y(15);%Q7
		dy(16)=r3*k6*A*y(15)+L6*J^4/(J^4+mu^4)*y(14)-(v3*k5+L5)*y(16);%Q8
		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
		dy(21)=H3*y(20)-H4*y(21);%Z
	end
	ode=@ model;
end