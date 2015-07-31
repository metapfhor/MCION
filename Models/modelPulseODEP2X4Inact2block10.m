function ode = modelPulseODEP2X4Inact2block10(ton,toff)
global d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 L10 L11 L12 L13 L14 L20 L21 L22 L23 L24 L30 L31 L32 L33 L34 L40 L41 L42 L43 L44 L50 L51 L52 L53 L54 L60 L61 L62 L63 L64 H0 H11 H12 H13 H14 H5 kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4 H3 H3D H4 g1 g2 E1 E2 delta epsilon mu A J V n1 n2 n3 alpha1 alpha2 alpha3 beta1 beta2 beta3 A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)

		dy=zeros(10,1);
		A=ATP(t);
		J=IVM(t);
		setAuxiliaryP2X4Inact2block10(y);
		dy(1)=L50*y(2)-L60*J^4/(J^4+mu^4)*y(1);%C0
		dy(2)=k19*y(3)+L60*J^4/(J^4+mu^4)*y(1)+H14*y(6)-(k20*A+L50)*y(2);%C7
		dy(3)=k20*A*y(2)+k21*y(4)+ks4*y(7)-(k19+k22*A+kd4)*y(3);%C8
		dy(4)=k22*A*y(3)+k23*y(5)+ks4*y(8)-(k21+k24*A+kd4)*y(4);%Q7
		dy(5)=k24*A*y(4)+ks4*y(9)-(k23+kd4)*y(5);%Q8
		dy(6)=d19*y(7)-(d20*A+H14)*y(6);%D41
		dy(7)=d20*A*y(6)+d21*y(8)+kd4*y(3)-(d19+d22*A+ks4)*y(7);%D42
		dy(8)=d22*A*y(7)+d23*y(9)+kd4*y(4)-(d21+d24*A+ks4)*y(8);%D43
		dy(9)=d24*A*y(8)+kd4*y(5)-(d23+ks4+H3D)*y(9);%D44
		dy(10)=H3D*y(9);%Z
	end
	ode=@ model;
end