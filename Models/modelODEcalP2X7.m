function ode = modelODEcalP2X7(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 rca kca koff C g12 g34 E12 E34 A V;
	A0=A;
	ATP=@(t) A0*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(24,1);
		A=ATP(t);
		dy(1)=koff*y(13)+k1*y(2)+L1*y(4)+H1*y(9)-(kca*C+3*k2*A)*y(1);%C1
		dy(2)=koff*y(14)+3*k2*A*y(1)+2*k3*y(5)+H2*y(10)-(kca*C+k1+2*k4*A+H3)*y(2);%C2
		dy(3)=koff*y(22)+3*k2*A*y(4)+2*k1*y(8)-(kca*C+k1+2*k2*A)*y(3);%C3
		dy(4)=koff*y(21)+k1*y(3)-(kca*C+3*k2*A+L1)*y(4);%C4
		dy(5)=koff*y(15)+2*k4*A*y(2)+3*k5*y(6)+H2*y(11)-(kca*C+2*k3+k6*A+H3)*y(5);%O1
		dy(6)=koff*y(16)+k6*A*y(5)+L2*y(7)+H6*y(12)-(kca*C+3*k5+L3+H7)*y(6);%O2
		dy(7)=koff*y(24)+k2*A*y(8)+L3*y(6)-(kca*C+3*k1+L2)*y(7);%O3
		dy(8)=koff*y(23)+2*k2*A*y(3)+3*k1*y(7)-(kca*C+2*k1+k2*A)*y(8);%O4
		dy(9)=koff*y(17)+k1*y(10)-(kca*C+3*k2*A+H1)*y(9);%D1
		dy(10)=koff*y(18)+3*k2*A*y(9)+2*k3*y(11)+H3*y(2)-(kca*C+k1+2*k4*A+H2)*y(10);%D2
		dy(11)=koff*y(19)+2*k4*A*y(10)+3*k5*y(12)+H3*y(5)-(kca*C+2*k3+k6*A+H2)*y(11);%D3
		dy(12)=koff*y(20)+k6*A*y(11)+H7*y(6)-(kca*C+3*k5+H6)*y(12);%D4
		dy(13)=kca*C*y(1)+k1*rca*y(14)+L1*y(21)+H1*y(17)-(koff+3*k2*rca*A)*y(13);%C1ca
		dy(14)=kca*C*y(2)+3*k2*rca*A*y(13)+2*k3*rca*y(15)+H2*y(18)-(koff+k1*rca+2*k4*rca*A+H3)*y(14);%C2ca
		dy(15)=kca*C*y(5)+2*k4*rca*A*y(14)+3*k5*rca*y(16)+H2*y(19)-(koff+2*k3*rca+k6*rca*A+H3)*y(15);%O1ca
		dy(16)=kca*C*y(6)+k6*rca*A*y(15)+L2*y(24)+H6*y(20)-(koff+3*k5*rca+L3+H7)*y(16);%O2ca
		dy(17)=kca*C*y(9)+k1*rca*y(18)-(koff+3*k2*rca*A+H1)*y(17);%D1ca
		dy(18)=kca*C*y(10)+3*k2*rca*A*y(17)+2*k3*rca*y(19)+H3*y(14)-(koff+k1*rca+2*k4*rca*A+H2)*y(18);%D2ca
		dy(19)=kca*C*y(11)+2*k4*rca*A*y(18)+3*k5*rca*y(20)+H3*y(15)-(koff+2*k3*rca+k6*rca*A+H2)*y(19);%D3ca
		dy(20)=kca*C*y(12)+k6*rca*A*y(19)+H7*y(16)-(koff+3*k5*rca+H6)*y(20);%D4ca
		dy(21)=kca*C*y(4)+k1*rca*y(22)-(koff+3*k2*rca*A+L1)*y(21);%C4ca
		dy(22)=kca*C*y(3)+3*k2*rca*A*y(21)+2*k1*rca*y(23)-(koff+k1*rca+2*k2*rca*A)*y(22);%C3ca
		dy(23)=kca*C*y(8)+2*k2*rca*A*y(22)+3*k1*rca*y(24)-(koff+2*k1*rca+k2*rca*A)*y(23);%O4ca
		dy(24)=kca*C*y(7)+k2*rca*A*y(23)+L3*y(16)-(koff+3*k1*rca+L2)*y(24);%O3ca
	end
	ode=@ model;
end