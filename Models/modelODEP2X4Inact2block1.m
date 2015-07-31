function ode = modelODEP2X4Inact2block1(ton,toff)
global d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L10 L11 L12 L13 L14 L20 L21 L22 L23 L24 L30 L31 L32 L33 L34 L40 L41 L42 L43 L44 L50 L51 L52 L53 L54 L60 L61 L62 L63 L64 H0 H11 H12 H13 H14 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 alpha1 alpha2 alpha3 beta1 beta2 beta3 A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4Inact2block1(y);
		dy=zeros(10,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=L10*y(2)-L20*J^4/(J^4+delta^4)*y(1);%C0
		dy(2)=k7*y(3)+L20*J^4/(J^4+delta^4)*y(1)+H12*y(6)-(k8*A+L10)*y(2);%C3
		dy(3)=k8*A*y(2)+k9*y(4)+ks2*y(7)-(k7+k10*A+kd2)*y(3);%C4
		dy(4)=k10*A*y(3)+k11*y(5)+ks2*y(8)-(k9+k12*A+kd2)*y(4);%Q3
		dy(5)=k12*A*y(4)+ks2*y(9)-(k11+kd2)*y(5);%Q4
		dy(6)=d7*y(7)-(d8*A+H12)*y(6);%D21
		dy(7)=d8*A*y(6)+d9*y(8)+kd2*y(3)-(d7+d10*A+ks2)*y(7);%D22
		dy(8)=d10*A*y(7)+d11*y(9)+kd2*y(4)-(d9+d12*A+ks2)*y(8);%D23
		dy(9)=d12*A*y(8)+kd2*y(5)-(d11+ks2+H3D)*y(9);%D24
		dy(10)=H3D*y(9);%Z
	end
	ode=@ model;
end