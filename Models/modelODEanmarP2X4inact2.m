function ode = modelODEanmarP2X4inact2(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 g1 g2 E1 E2 alpha beta J V A n K F G A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryanmarP2X4inact2(y);
		dy=zeros(14,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=H5*y(2)+L1*y(4)-(H0+L3*K)*y(1);%C0
		dy(2)=H0*y(1)+k1*G*y(3)+L1*y(4)+H1*F*y(10)+H4*y(14)-(H5+3*k2*A+L3*K)*y(2);%C1
		dy(3)=3*k2*A*y(2)+2*k3*G*y(6)+L2*y(5)-(k1*G+2*k4*A+H2+L3*K)*y(3);%C2
		dy(4)=k1*G*y(5)+L3*K*y(1)+L3*K*y(2)-(3*k2*A*F+L1+L1)*y(4);%C3
		dy(5)=3*k2*A*F*y(4)+2*k3*G*y(8)+L3*K*y(3)-(k1*G+2*k4*A*F+L2)*y(5);%C4
		dy(6)=2*k4*A*y(3)+3*k5*G*y(7)+L2*y(8)-(2*k3*G+k6*A+H2+L3*K)*y(6);%Q1
		dy(7)=k6*A*y(6)+L2*y(9)-(3*k5*G+H2+L3*K)*y(7);%Q2
		dy(8)=2*k4*A*F*y(5)+3*k5*G*y(9)+L3*K*y(6)-(2*k3*G+k6*A*F+L2)*y(8);%Q3
		dy(9)=k6*A*F*y(8)+L3*K*y(7)-(3*k5*G+L2)*y(9);%Q4
		dy(10)=k1*y(11)-(3*k2*A+H1*F)*y(10);%D1
		dy(11)=3*k2*A*y(10)+2*k3*y(12)+H2*y(3)-(k1+2*k4*A)*y(11);%D2
		dy(12)=2*k4*A*y(11)+3*k5*y(13)+H2*y(6)-(2*k3+k6*A)*y(12);%D3
		dy(13)=k6*A*y(12)+H2*y(7)-(3*k5+H3)*y(13);%D4
		dy(14)=H3*y(13)-H4*y(14);%Z
	end
	ode=@ model;
end