function ode = modelPulseODEanmarP2X4(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 g1 g2 E1 E2 alpha beta J K F G A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryanmarP2X4(y);
		dy=zeros(13,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*G*y(2)+L1*y(3)+H1*y(9)+H4*y(13)-3*k2*A*F*y(1);%C1
		dy(2)=3*k2*A*F*y(1)+2*k3*G*y(5)-(k1*G+2*k4*A*F+H2)*y(2);%C2
		dy(3)=k1*G*y(4)-(3*k2*A*F+L1)*y(3);%C3
		dy(4)=3*k2*A*F*y(3)+2*k1*G*y(7)-(k1*G+2*k2*A*F)*y(4);%C4
		dy(5)=2*k4*A*F*y(2)+3*k5*G*y(6)-(2*k3*G+k6*A*F+H2)*y(5);%Q1
		dy(6)=k6*A*F*y(5)+L2*y(8)-(3*k5*G+H2+L3*(1-G))*y(6);%Q2
		dy(7)=2*k2*A*F*y(4)+3*k1*G*y(8)-(2*k1*G+k2*A*F)*y(7);%Q3
		dy(8)=k2*A*F*y(7)+L3*(1-G)*y(6)-(3*k1*G+L2)*y(8);%Q4
		dy(9)=k1*y(10)-(3*k2*A+H1)*y(9);%D1
		dy(10)=3*k2*A*y(9)+2*k3*y(11)+H2*y(2)-(k1+2*k4*A)*y(10);%D2
		dy(11)=2*k4*A*y(10)+3*k5*y(12)+H2*y(5)-(2*k3+k6*A)*y(11);%D3
		dy(12)=k6*A*y(11)+H2*y(6)-(3*k5+H3)*y(12);%D4
		dy(13)=H3*y(12)-H4*y(13);%Z
	end
	ode=@ model;
end