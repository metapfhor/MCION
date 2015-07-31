function ode = modelPulseODEP2X4Stack3sub(ton,toff)
global d1 d2 d3 d4 d5 d6 k1 k2 k3 k4 k5 k6 H11 kd1 ks1 H3 H4 H51 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4Stack3sub(y);
		dy=zeros(9,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+H11*y(5)+H4*y(9)-(k2*A+H51)*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(3)+ks1*y(6)-(k1+k4*A+kd1)*y(2);%C2
		dy(3)=k4*A*y(2)+k5*y(4)+ks1*y(7)-(k3+k6*A+kd1)*y(3);%Q1
		dy(4)=k6*A*y(3)+ks1*y(8)-(k5+kd1)*y(4);%Q2
		dy(5)=d1*y(6)+H51*y(1)-(d2*A+H11)*y(5);%D11
		dy(6)=d2*A*y(5)+d3*y(7)+kd1*y(2)-(d1+d4*A+ks1)*y(6);%D12
		dy(7)=d4*A*y(6)+d5*y(8)+kd1*y(3)-(d3+d6*A+ks1)*y(7);%D13
		dy(8)=d6*A*y(7)+kd1*y(4)-(d5+ks1+H3)*y(8);%D14
		dy(9)=H3*y(8)-H4*y(9);%Z
	end
	ode=@ model;
end