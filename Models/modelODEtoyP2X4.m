function ode = modelODEtoyP2X4(ton,toff,amp)
global k1 k2 L1 L2 L3 L4 L5 L6 L7 L8 H1 H2 H3 H4 g12 g34 E12 E34;
	ATP=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	function dy=model(t,y)
		dy=zeros(9,1);
		A=ATP(t);
		dy(1)=++k1*G*y(4)+L1*y(2)+H1*y(7)+H4*y(9)--(+k2*A*F+L4*K)*y(1);%C1
		dy(2)=++k1*G*y(5)+L4*K*y(1)+L8*K*y(3)--(+k2*A*F+L1+L5)*y(2);%C2
		dy(3)=++k1*G*y(6)+L5*y(2)--(+k2*A*F+L8*K)*y(3);%C3
		dy(4)=++k2*A*F*y(1)+L2*y(5)--(+k1*G+H2+L3*K)*y(4);%O1
		dy(5)=++k2*A*F*y(2)+L3*K*y(4)+L6*y(6)--(+k1*G+L2+L7*K)*y(5);%O2
		dy(6)=++k2*A*F*y(3)+L7*K*y(5)--(+k1*G+L6)*y(6);%O3
		dy(7)=++k1*y(8)--(+k2*A+H1)*y(7);%D1
		dy(8)=++k2*A*y(7)+H2*y(4)--(+k1+H3)*y(8);%D2
		dy(9)=++H3*y(8)--+H4*y(9);%N
	end
	ode=@ model;
end