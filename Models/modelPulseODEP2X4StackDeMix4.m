function ode = modelPulseODEP2X4StackDeMix4(ton,toff)
global d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d19 d20 d21 d22 d23 d24 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k19 k20 k21 k22 k23 k24 L11 L12 L13 L14 L21 L22 L23 L24 L51 L52 L53 L54 L61 L62 L63 L64 H11 H12 H14 kd1 kd2 kd4 ks1 ks2 ks4 H3 H3D H4 g1 g2 E1 E2 delta mu A J V n1 n2 n3 alpha1 alpha3 beta1 beta3 A0 J0 IVMon IVMoff;

	ATP=@(t) 0;
	for i=1:length(ton)
		ATP= @(t) ATP(t) + (A0*(heavip(t-ton(i))-heavip(t-toff(i))));
	end;
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryP2X4StackDeMix4(y);
		dy=zeros(25,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=k1*y(2)+L11*y(3)+H11*y(13)+H4*y(25)-(k2*A+L21*J^4/(J^4+delta^4))*y(1);%C1
		dy(2)=k2*A*y(1)+k3*y(7)+ks1*y(14)+L12*y(4)-(k1+k4*A+kd1+L22*J^4/(J^4+delta^4))*y(2);%C2
		dy(3)=k7*y(4)+L21*J^4/(J^4+delta^4)*y(1)+L51*y(5)+H12*y(17)-(k8*A+L11+L61*J^4/(J^4+mu^4))*y(3);%C3
		dy(4)=k8*A*y(3)+k9*y(9)+ks2*y(18)+L22*J^4/(J^4+delta^4)*y(2)+L52*y(6)-(k7+k10*A+kd2+L12+L62*J^4/(J^4+mu^4))*y(4);%C4
		dy(5)=k19*y(6)+L61*J^4/(J^4+mu^4)*y(3)+H14*y(21)-(k20*A+L51)*y(5);%C7
		dy(6)=k20*A*y(5)+k21*y(11)+ks4*y(22)+L62*J^4/(J^4+mu^4)*y(4)-(k19+k22*A+kd4+L52)*y(6);%C8
		dy(7)=k4*A*y(2)+k5*y(8)+ks1*y(15)+L13*y(9)-(k3+k6*A+kd1+L23*J^4/(J^4+delta^4))*y(7);%Q1
		dy(8)=k6*A*y(7)+ks1*y(16)+L14*y(10)-(k5+kd1+L24*J^4/(J^4+delta^4))*y(8);%Q2
		dy(9)=k10*A*y(4)+k11*y(10)+ks2*y(19)+L23*J^4/(J^4+delta^4)*y(7)+L53*y(11)-(k9+k12*A+kd2+L13+L63*J^4/(J^4+mu^4))*y(9);%Q3
		dy(10)=k12*A*y(9)+ks2*y(20)+L24*J^4/(J^4+delta^4)*y(8)+L54*y(12)-(k11+kd2+L14+L64*J^4/(J^4+mu^4))*y(10);%Q4
		dy(11)=k22*A*y(6)+k23*y(12)+ks4*y(23)+L63*J^4/(J^4+mu^4)*y(9)-(k21+k24*A+kd4+L53)*y(11);%Q7
		dy(12)=k24*A*y(11)+ks4*y(24)+L64*J^4/(J^4+mu^4)*y(10)-(k23+kd4+L54)*y(12);%Q8
		dy(13)=d1*y(14)+beta1*L11*y(17)-(d2*A+alpha1*L21*J^4/(J^4+delta^4)+H11)*y(13);%D11
		dy(14)=d2*A*y(13)+d3*y(15)+kd1*y(2)+beta1*L12*y(18)-(d1+d4*A+ks1+alpha1*L22*J^4/(J^4+delta^4))*y(14);%D12
		dy(15)=d4*A*y(14)+d5*y(16)+kd1*y(7)+beta1*L13*y(19)-(d3+d6*A+ks1+alpha1*L23*J^4/(J^4+delta^4))*y(15);%D13
		dy(16)=d6*A*y(15)+kd1*y(8)+beta1*L14*y(20)-(d5+ks1+alpha1*L24*J^4/(J^4+delta^4)+H3)*y(16);%D14
		dy(17)=d7*y(18)+alpha1*L21*J^4/(J^4+delta^4)*y(13)+beta3*L51*y(21)-(d8*A+beta1*L11+alpha3*L61*J^4/(J^4+mu^4)+H12)*y(17);%D21
		dy(18)=d8*A*y(17)+d9*y(19)+kd2*y(4)+alpha1*L22*J^4/(J^4+delta^4)*y(14)+beta3*L52*y(22)-(d7+d10*A+ks2+beta1*L12+alpha3*L62*J^4/(J^4+mu^4))*y(18);%D22
		dy(19)=d10*A*y(18)+d11*y(20)+kd2*y(9)+alpha1*L23*J^4/(J^4+delta^4)*y(15)+beta3*L53*y(23)-(d9+d12*A+ks2+beta1*L13+alpha3*L63*J^4/(J^4+mu^4))*y(19);%D23
		dy(20)=d12*A*y(19)+kd2*y(10)+alpha1*L24*J^4/(J^4+delta^4)*y(16)+beta3*L54*y(24)-(d11+ks2+beta1*L14+alpha3*L64*J^4/(J^4+mu^4)+H3D)*y(20);%D24
		dy(21)=d19*y(22)+alpha3*L61*J^4/(J^4+mu^4)*y(17)-(d20*A+beta3*L51+H14)*y(21);%D41
		dy(22)=d20*A*y(21)+d21*y(23)+kd4*y(6)+alpha3*L62*J^4/(J^4+mu^4)*y(18)-(d19+d22*A+ks4+beta3*L52)*y(22);%D42
		dy(23)=d22*A*y(22)+d23*y(24)+kd4*y(11)+alpha3*L63*J^4/(J^4+mu^4)*y(19)-(d21+d24*A+ks4+beta3*L53)*y(23);%D43
		dy(24)=d24*A*y(23)+kd4*y(12)+alpha3*L64*J^4/(J^4+mu^4)*y(20)-(d23+ks4+beta3*L54+H3D)*y(24);%D44
		dy(25)=H3*y(16)+H3D*y(20)+H3D*y(24)-H4*y(25);%Z
	end
	ode=@ model;
end