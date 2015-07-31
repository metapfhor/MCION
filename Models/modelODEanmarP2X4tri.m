function ode = modelODEanmarP2X4tri(ton,toff)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H0 H1 H2 H3 H4 H5 H6 H7 g1 g2 E1 E2 alpha beta gamma J V A n1 n2 Gmin Hmin rmin A IVMon IVMoff;

	A0=A;
	J0=J;
	ATP=@(t) A0*(heavip(t-ton)-heavip(t-toff));
	IVM=@(t) J0*(heaviside(t-IVMon)-heaviside(t-IVMoff));
	function dy=model(t,y)
		setAuxiliaryanmarP2X4tri(y);
		dy=zeros(14,1);
		A=ATP(t);
		J=IVM(t);
		dy(1)=H7*y(2)+L1*y(4)-(H0+L3*J^n1/(J^n1+beta^n1))*y(1);%C0
		dy(2)=H0*y(1)+k1*y(3)+L1*y(4)+H1*y(10)+H6*y(14)-(H7+3*k2*A+L3*J^n1/(J^n1+beta^n1))*y(2);%C1
		dy(3)=3*k2*A*y(2)+2*k3*y(6)+L2*y(5)-(k1+2*k4*A+H2+L3*J^n1/(J^n1+beta^n1))*y(3);%C2
		dy(4)=k1*(1-J^n1/(J^n1+beta^n1)+Gmin)*y(5)+H4*J^n2/(J^n2+gamma^n2)*y(10)+L3*J^n1/(J^n1+beta^n1)*y(1)+L3*J^n1/(J^n1+beta^n1)*y(2)-(3*k2*A*(1+alpha*J^n1/(J^n1+beta^n1))+L1+L1)*y(4);%C3
		dy(5)=3*k2*A*(1+alpha*J^n1/(J^n1+beta^n1))*y(4)+2*k1*(1-J^n1/(J^n1+beta^n1)+Gmin)*y(8)+(H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5))*y(11)+L3*J^n1/(J^n1+beta^n1)*y(3)-(k1*(1-J^n1/(J^n1+beta^n1)+Gmin)+2*k2*A*(1+alpha*J^n1/(J^n1+beta^n1))+H2*(1-J^n1/(J^n1+beta^n1)+Hmin)+L2)*y(5);%C4
		dy(6)=2*k4*A*y(3)+3*k5*y(7)+L2*y(8)-(2*k3+k6*A+H2+L3*J^n1/(J^n1+beta^n1))*y(6);%Q1
		dy(7)=k6*A*y(6)+L2*y(9)-(3*k5+H2+L3*J^n1/(J^n1+beta^n1))*y(7);%Q2
		dy(8)=2*k2*A*(1+alpha*J^n1/(J^n1+beta^n1))*y(5)+3*k1*(1-J^n1/(J^n1+beta^n1)+Gmin)*y(9)+(H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5))*y(12)+L3*J^n1/(J^n1+beta^n1)*y(6)-(2*k1*(1-J^n1/(J^n1+beta^n1)+Gmin)+k2*A*(1+alpha*J^n1/(J^n1+beta^n1))+H2*(1-J^n1/(J^n1+beta^n1)+Hmin)+L2)*y(8);%Q3
		dy(9)=k2*A*(1+alpha*J^n1/(J^n1+beta^n1))*y(8)+(H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5))*y(13)+L3*J^n1/(J^n1+beta^n1)*y(7)-(3*k1*(1-J^n1/(J^n1+beta^n1)+Gmin)+H2*(1-J^n1/(J^n1+beta^n1)+Hmin)+L2)*y(9);%Q4
		dy(10)=k1*y(11)-(3*k2*A+H4*J^n2/(J^n2+gamma^n2)+H1)*y(10);%D1
		dy(11)=3*k2*A*y(10)+2*k3*y(12)+H2*y(3)+H2*(1-J^n1/(J^n1+beta^n1)+Hmin)*y(5)-(k1+2*k2*A+H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5))*y(11);%D2
		dy(12)=2*k2*A*y(11)+3*k1*y(13)+H2*y(6)+H2*(1-J^n1/(J^n1+beta^n1)+Hmin)*y(8)-(2*k3+k2*A+H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5))*y(12);%D3
		dy(13)=k2*A*y(12)+H2*y(7)+H2*(1-J^n1/(J^n1+beta^n1)+Hmin)*y(9)-(3*k1+H3*J^n2/(J^n2+gamma^n2)+rmin*2*(heaviside(J)-0.5)+H5)*y(13);%D4
		dy(14)=H5*y(13)-H6*y(14);%Z
	end
	ode=@ model;
end