function ode=PulseProtSSEP2X4(ton,toff)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 A0 J0 IVMon IVMoff
global k19 k20 k21 k22 k23 k24 L5 L6 delta epsilon mu n1 n2 n3 v1 v2 v3 r1 r2 r3;
    ATP=@(t) 0;
    for i=1:length(ton)
        ATP= @(t) ATP(t) + (A0*(heaviside(t-ton(i))-heaviside(t-toff(i))));
    end
    
    IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		dy=zeros(21,1);
		A=ATP(t);
        J=IVM(t);
        
%         epsilon=3e-6;
%         delta=3.5e-7;
%         mu=9.2e-6;
        n=4;
        
%         dy(1)=k1*y(4)+L1*y(2)+H1*y(7)+H4*y(9)-(k2*A+L2*((J^n)/(J^n+delta^n)))*y(1);%C1
% 		dy(2)=k3*y(5)+L2*((J^n)/(J^n+delta^n))*y(1)+L3*y(3)-(k4*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(2);%C2
% 		dy(3)=k5*y(6)+L4*((J^n)/(J^n+epsilon^n))*y(2)-(k6*A+L3)*y(3);%C3
% 		dy(4)=k2*A*y(1)+L1*y(5)-(k1+H2+L2*((J^n)/(J^n+delta^n)))*y(4);%Q1
% 		dy(5)=k4*A*y(2)+L2*((J^n)/(J^n+delta^n))*y(4)+L3*y(6)-(k3+L1+L4*((J^n)/(J^n+epsilon^n)))*y(5);%Q2
% 		dy(6)=k6*A*y(3)+L4*((J^n)/(J^n+epsilon^n))*y(5)-(k5+L3)*y(6);%Q3
% 		dy(7)=k1*y(8)-(k2*A+H1)*y(7);%D1
% 		dy(8)=k2*A*y(7)+H2*y(4)-(k1+H3)*y(8);%D2
% 		dy(9)=H3*y(8)-H4*y(9);%Z
        
%         dy(1)=k1*y(2)+L1*y(3)+H1*y(13)+H4*y(17)-(k2*A+L2*((J^n)/(J^n+delta^n)))*y(1);%C1
% 		dy(2)=k2*A*y(1)+k3*y(7)+L1*y(4)-(k1+k4*A+H2+L2*((J^n)/(J^n+delta^n)))*y(2);%C2
% 		dy(3)=k7*y(4)+L2*((J^n)/(J^n+delta^n))*y(1)+L3*y(5)-(k8*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(3);%C3
% 		dy(4)=k8*A*y(3)+k9*y(9)+L2*((J^n)/(J^n+delta^n))*y(2)+L3*y(6)-(k7+k10*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(4);%C4
% 		dy(5)=k13*y(6)+L4*((J^n)/(J^n+epsilon^n))*y(3)-(k14*A+L3)*y(5);%C5
% 		dy(6)=k14*A*y(5)+k15*y(11)+L4*((J^n)/(J^n+epsilon^n))*y(4)-(k13+k16*A+L3)*y(6);%C6
% 		dy(7)=k4*A*y(2)+k5*y(8)+L1*y(9)-(k3+k6*A+H2+L2*((J^n)/(J^n+delta^n)))*y(7);%Q1
% 		dy(8)=k6*A*y(7)+L1*y(10)-(k5+H2+L2*((J^n)/(J^n+delta^n)))*y(8);%Q2
% 		dy(9)=k10*A*y(4)+k11*y(10)+L2*((J^n)/(J^n+delta^n))*y(7)+L3*y(11)-(k9+k12*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(9);%Q3
% 		dy(10)=k12*A*y(9)+L2*((J^n)/(J^n+delta^n))*y(8)+L3*y(12)-(k11+L1+L4*((J^n)/(J^n+epsilon^n)))*y(10);%Q4
% 		dy(11)=k16*A*y(6)+k17*y(12)+L4*((J^n)/(J^n+epsilon^n))*y(9)-(k15+k18*A+L3)*y(11);%Q5
% 		dy(12)=k18*A*y(11)+L4*((J^n)/(J^n+epsilon^n))*y(10)-(k17+L3)*y(12);%Q6
% 		dy(13)=k1*y(14)-(k2*A+H1)*y(13);%D1
% 		dy(14)=k2*A*y(13)+k3*y(15)+H2*y(2)-(k1+k4*A)*y(14);%D2
% 		dy(15)=k4*A*y(14)+k5*y(16)+H2*y(7)-(k3+k6*A)*y(15);%D3
% 		dy(16)=k6*A*y(15)+H2*y(8)-(k5+H3)*y(16);%D4
% 		dy(17)=H3*y(16)-H4*y(17);%Z
%         
%         dy(1)=k1*y(2)+L1*y(3)+H1*y(13)+H4*y(17)-(k2*A+L2*((J^n)/(J^n+delta^n)))*y(1);%C1
% 		dy(2)=k2*A*y(1)+k3*y(7)+L1*y(4)-(k1+k4*A+H2+L2*((J^n)/(J^n+delta^n)))*y(2);%C2
% 		dy(3)=k7*y(4)+L2*((J^n)/(J^n+delta^n))*y(1)+L3*y(5)-(k8*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(3);%C3
% 		dy(4)=k8*A*y(3)+k9*y(9)+L2*((J^n)/(J^n+delta^n))*y(2)+L3*y(6)-(k7+k10*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(4);%C4
% 		dy(5)=k13*y(6)+L4*((J^n)/(J^n+epsilon^n))*y(3)+L5*y(18)-(k14*A+L3+L6*((J^n)/(J^n+mu^n)))*y(5);%C5
% 		dy(6)=k14*A*y(5)+k15*y(11)+L4*((J^n)/(J^n+epsilon^n))*y(4)+L5*y(19)-(k13+k16*A+L3+L6*((J^n)/(J^n+mu^n)))*y(6);%C6
% 		dy(7)=k4*A*y(2)+k5*y(8)+L1*y(9)-(k3+k6*A+H2+L2*((J^n)/(J^n+delta^n)))*y(7);%Q1
% 		dy(8)=k6*A*y(7)+L1*y(10)-(k5+H2+L2*((J^n)/(J^n+delta^n)))*y(8);%Q2
% 		dy(9)=k10*A*y(4)+k11*y(10)+L2*((J^n)/(J^n+delta^n))*y(7)+L3*y(11)-(k9+k12*A+L1+L4*((J^n)/(J^n+epsilon^n)))*y(9);%Q3
% 		dy(10)=k12*A*y(9)+L2*((J^n)/(J^n+delta^n))*y(8)+L3*y(12)-(k11+L1+L4*((J^n)/(J^n+epsilon^n)))*y(10);%Q4
% 		dy(11)=k16*A*y(6)+k17*y(12)+L4*((J^n)/(J^n+epsilon^n))*y(9)+L5*y(20)-(k15+k18*A+L3+L6*((J^n)/(J^n+mu^n)))*y(11);%Q5
% 		dy(12)=k18*A*y(11)+L4*((J^n)/(J^n+epsilon^n))*y(10)+L5*y(21)-(k17+L3+L6*((J^n)/(J^n+mu^n)))*y(12);%Q6
% 		dy(13)=k1*y(14)-(k2*A+H1)*y(13);%D1
% 		dy(14)=k2*A*y(13)+k3*y(15)+H2*y(2)-(k1+k4*A)*y(14);%D2
% 		dy(15)=k4*A*y(14)+k5*y(16)+H2*y(7)-(k3+k6*A)*y(15);%D3
% 		dy(16)=k6*A*y(15)+H2*y(8)-(k5+H3)*y(16);%D4
% 		dy(17)=H3*y(16)-H4*y(17);%Z
%         dy(18)=k19*y(19)+L6*((J^n)/(J^n+mu^n))*y(5)-(k20*A+L5)*y(18);%C7
%         dy(19)=k20*A*y(18)+k21*y(20)+L6*((J^n)/(J^n+mu^n))*y(6)-(L5+k19+k22*A)*y(19);%C8
%         dy(20)=k22*A*y(19)+k23*y(21)+L6*((J^n)/(J^n+mu^n))*y(11)-(L5+k21+k24*A)*y(20);%Q7
%         dy(21)=k24*A*y(20)+L6*((J^n)/(J^n+mu^n))*y(12)-(L5+k23)*y(21);%Q8
 
% 		dy(1)=k1*y(2)+L1*y(3)+H1*y(17)+H4*y(21)-(k2*A+L2*J^n1/(J^n1+delta^n1))*y(1);%C1
% 		dy(2)=k2*A*y(1)+k3*y(9)+L1*y(4)-(k1+k4*A+H2+L2*J^n1/(J^n1+delta^n1))*y(2);%C2
% 		dy(3)=k7*y(4)+L2*J^n1/(J^n1+delta^n1)*y(1)+L3*y(5)-(k8*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(3);%C3
% 		dy(4)=k8*A*y(3)+k9*y(11)+L2*J^n1/(J^n1+delta^n1)*y(2)+L3*y(6)-(k7+k10*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(4);%C4
% 		dy(5)=k13*y(6)+L4*J^n2/(J^n2+epsilon^n2)*y(3)+L5*y(7)-(k14*A+L3+L6*J^n3/(J^n3+mu^n3))*y(5);%C5
% 		dy(6)=k14*A*y(5)+k15*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(4)+L5*y(8)-(k13+k16*A+L3+L6*J^n3/(J^n3+mu^n3))*y(6);%C6
% 		dy(7)=k19*y(8)+L6*J^n3/(J^n3+mu^n3)*y(5)-(k14*A+L5)*y(7);%C7
% 		dy(8)=k14*A*y(7)+k21*y(15)+L6*J^n3/(J^n3+mu^n3)*y(6)-(k19+k16*A+L5)*y(8);%C8
% 		dy(9)=k4*A*y(2)+k5*y(10)+L1*y(11)-(k3+k6*A+H2+L2*J^n1/(J^n1+delta^n1))*y(9);%Q1
% 		dy(10)=k6*A*y(9)+L1*y(12)-(k5+H2+L2*J^n1/(J^n1+delta^n1))*y(10);%Q2
% 		dy(11)=k10*A*y(4)+k11*y(12)+L2*J^n1/(J^n1+delta^n1)*y(9)+L3*y(13)-(k9+k12*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(11);%Q3
% 		dy(12)=k12*A*y(11)+L2*J^n1/(J^n1+delta^n1)*y(10)+L3*y(14)-(k11+L1+L4*J^n2/(J^n2+epsilon^n2))*y(12);%Q4
% 		dy(13)=k16*A*y(6)+k17*y(14)+L4*J^n2/(J^n2+epsilon^n2)*y(11)+L5*y(15)-(k15+k18*A+L3+L6*J^n3/(J^n3+mu^n3))*y(13);%Q5
% 		dy(14)=k18*A*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(12)+L5*y(16)-(k17+L3+L6*J^n3/(J^n3+mu^n3))*y(14);%Q6
% 		dy(15)=k16*A*y(8)+k23*y(16)+L6*J^n3/(J^n3+mu^n3)*y(13)-(k21+k18*A+L5)*y(15);%Q7
% 		dy(16)=k18*A*y(15)+L6*J^n3/(J^n3+mu^n3)*y(14)-(k23+L5)*y(16);%Q8
% 		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
% 		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
% 		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
% 		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
% 		dy(21)=H3*y(20)-H4*y(21);%Z

		dy(1)=k1*y(2)+L1*y(3)+H1*y(17)+H4*y(21)-(k2*A+L2*J^n1/(J^n1+delta^n1))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(9)+L1*y(4)-(k1+k4*A+H2+L2*J^n1/(J^n1+delta^n1))*y(2);%C2
		dy(3)=v1*k1*y(4)+L2*J^n1/(J^n1+delta^n1)*y(1)+L3*y(5)-(r1*k2*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(3);%C3
		dy(4)=r1*k2*A*y(3)+v1*k3*y(11)+L2*J^n1/(J^n1+delta^n1)*y(2)+L3*y(6)-(v1*k1+r1*k4*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(4);%C4
		dy(5)=v2*k1*y(6)+L4*J^n2/(J^n2+epsilon^n2)*y(3)+L5*y(7)-(r2*k2*A+L3+L6*J^n3/(J^n3+mu^n3))*y(5);%C5
		dy(6)=r2*k2*A*y(5)+v2*k3*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(4)+L5*y(8)-(v2*k1+r2*k4*A+L3+L6*J^n3/(J^n3+mu^n3))*y(6);%C6
		dy(7)=v3*k1*y(8)+L6*J^n3/(J^n3+mu^n3)*y(5)-(r3*k2*A+L5)*y(7);%C7
		dy(8)=r3*k2*A*y(7)+v3*k3*y(15)+L6*J^n3/(J^n3+mu^n3)*y(6)-(v3*k1+r3*k4*A+L5)*y(8);%C8
		dy(9)=k4*A*y(2)+k5*y(10)+L1*y(11)-(k3+k6*A+H2+L2*J^n1/(J^n1+delta^n1))*y(9);%Q1
		dy(10)=k6*A*y(9)+L1*y(12)-(k5+H2+L2*J^n1/(J^n1+delta^n1))*y(10);%Q2
		dy(11)=r1*k4*A*y(4)+v1*k5*y(12)+L2*J^n1/(J^n1+delta^n1)*y(9)+L3*y(13)-(v1*k3+r1*k6*A+L1+L4*J^n2/(J^n2+epsilon^n2))*y(11);%Q3
		dy(12)=r1*k6*A*y(11)+L2*J^n1/(J^n1+delta^n1)*y(10)+L3*y(14)-(v1*k5+L1+L4*J^n2/(J^n2+epsilon^n2))*y(12);%Q4
		dy(13)=r2*k4*A*y(6)+v2*k5*y(14)+L4*J^n2/(J^n2+epsilon^n2)*y(11)+L5*y(15)-(v2*k3+r2*k6*A+L3+L6*J^n3/(J^n3+mu^n3))*y(13);%Q5
		dy(14)=r2*k6*A*y(13)+L4*J^n2/(J^n2+epsilon^n2)*y(12)+L5*y(16)-(v2*k5+L3+L6*J^n3/(J^n3+mu^n3))*y(14);%Q6
		dy(15)=r3*k4*A*y(8)+v3*k5*y(16)+L6*J^n3/(J^n3+mu^n3)*y(13)-(v3*k3+r3*k6*A+L5)*y(15);%Q7
		dy(16)=r3*k6*A*y(15)+L6*J^n3/(J^n3+mu^n3)*y(14)-(v3*k5+L5)*y(16);%Q8
		dy(17)=k1*y(18)-(k2*A+H1)*y(17);%D1
		dy(18)=k2*A*y(17)+k3*y(19)+H2*y(2)-(k1+k4*A)*y(18);%D2
		dy(19)=k4*A*y(18)+k5*y(20)+H2*y(9)-(k3+k6*A)*y(19);%D3
		dy(20)=k6*A*y(19)+H2*y(10)-(k5+H3)*y(20);%D4
		dy(21)=H3*y(20)-H4*y(21);%Z

	end
	ode=@ model;
end
