function err = errorIntegratorcalP2X7(ton,toff,Ttot,amp,y0,T,I,V)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 r1 r2 kca koff C g12 g34 E12 E34 A V Acell;
	dt=getFDTimeStepcalP2X7(amp);
	
	%#codegen
	nT=min(Ttot,T(end))/dt;
	ycurr=y0;
	yup=zeros(size(y0));
	i=2;
	deltaTNext=abs(T(2)-dt);
	deltaT=abs(T(2));
	err=0;
	E=0;
	for j=1:nT-1
		t=j*dt;
		A=amp*(heavi(t-ton)-heavi(t-toff));
		yup(1)=(ycurr(1)+dt*(koff*ycurr(13)+k1*ycurr(2)+L1*ycurr(4)+H1*ycurr(9)))/(1+dt*(kca*C+3*k2*A));%C1
		yup(2)=(ycurr(2)+dt*(koff*ycurr(14)+3*k2*A*ycurr(1)+2*k3*ycurr(5)+H2*ycurr(10)))/(1+dt*(kca*C+k1+2*k4*A+H3));%C2
		yup(3)=(ycurr(3)+dt*(koff*ycurr(22)+3*k2*A*ycurr(4)+2*k1*ycurr(8)))/(1+dt*(kca*C+k1+2*k2*A));%C3
		yup(4)=(ycurr(4)+dt*(koff*ycurr(21)+k1*ycurr(3)))/(1+dt*(kca*C+3*k2*A+L1));%C4
		yup(5)=(ycurr(5)+dt*(koff*ycurr(15)+2*k4*A*ycurr(2)+3*k5*ycurr(6)+H4*ycurr(11)))/(1+dt*(kca*C+2*k3+k6*A+H5));%O1
		yup(6)=(ycurr(6)+dt*(koff*ycurr(16)+k6*A*ycurr(5)+L2*ycurr(7)+H6*ycurr(12)))/(1+dt*(kca*C+3*k5+L3+H7));%O2
		yup(7)=(ycurr(7)+dt*(koff*ycurr(24)+k2*A*ycurr(8)+L3*ycurr(6)))/(1+dt*(kca*C+3*k1+L2));%O3
		yup(8)=(ycurr(8)+dt*(koff*ycurr(23)+2*k2*A*ycurr(3)+3*k1*ycurr(7)))/(1+dt*(kca*C+2*k1+k2*A));%O4
		yup(9)=(ycurr(9)+dt*(koff*ycurr(17)+k1*ycurr(10)))/(1+dt*(kca*C+3*k2*A+H1));%D1
		yup(10)=(ycurr(10)+dt*(koff*ycurr(18)+3*k2*A*ycurr(9)+2*k3*ycurr(11)+H3*ycurr(2)))/(1+dt*(kca*C+k1+2*k4*A+H2));%D2
		yup(11)=(ycurr(11)+dt*(koff*ycurr(19)+2*k4*A*ycurr(10)+3*k5*ycurr(12)+H5*ycurr(5)))/(1+dt*(kca*C+2*k3+k6*A+H4));%D3
		yup(12)=(ycurr(12)+dt*(koff*ycurr(20)+k6*A*ycurr(11)+H7*ycurr(6)))/(1+dt*(kca*C+3*k5+H6));%D4
		yup(13)=(ycurr(13)+dt*(kca*C*ycurr(1)+k1*r1*ycurr(14)+L1*ycurr(21)+H1*ycurr(17)))/(1+dt*(koff+3*k2*r2*A));%C1ca
		yup(14)=(ycurr(14)+dt*(kca*C*ycurr(2)+3*k2*r2*A*ycurr(13)+2*k3*r1*ycurr(15)+H2*ycurr(18)))/(1+dt*(koff+k1*r1+2*k4*r2*A+H3));%C2ca
		yup(15)=(ycurr(15)+dt*(kca*C*ycurr(5)+2*k4*r2*A*ycurr(14)+3*k5*r1*ycurr(16)+H4*ycurr(19)))/(1+dt*(koff+2*k3*r1+k6*r2*A+H5));%O1ca
		yup(16)=(ycurr(16)+dt*(kca*C*ycurr(6)+k6*r2*A*ycurr(15)+L2*ycurr(24)+H6*ycurr(20)))/(1+dt*(koff+3*k5*r1+L3+H7));%O2ca
		yup(17)=(ycurr(17)+dt*(kca*C*ycurr(9)+k1*r1*ycurr(18)))/(1+dt*(koff+3*k2*r2*A+H1));%D1ca
		yup(18)=(ycurr(18)+dt*(kca*C*ycurr(10)+3*k2*r2*A*ycurr(17)+2*k3*r1*ycurr(19)+H3*ycurr(14)))/(1+dt*(koff+k1*r1+2*k4*r2*A+H2));%D2ca
		yup(19)=(ycurr(19)+dt*(kca*C*ycurr(11)+2*k4*r2*A*ycurr(18)+3*k5*r1*ycurr(20)+H5*ycurr(15)))/(1+dt*(koff+2*k3*r1+k6*r2*A+H4));%D3ca
		yup(20)=(ycurr(20)+dt*(kca*C*ycurr(12)+k6*r2*A*ycurr(19)+H7*ycurr(16)))/(1+dt*(koff+3*k5*r1+H6));%D4ca
		yup(21)=(ycurr(21)+dt*(kca*C*ycurr(4)+k1*r1*ycurr(22)))/(1+dt*(koff+3*k2*r2*A+L1));%C4ca
		yup(22)=(ycurr(22)+dt*(kca*C*ycurr(3)+3*k2*r2*A*ycurr(21)+2*k1*r1*ycurr(23)))/(1+dt*(koff+k1*r1+2*k2*r2*A));%C3ca
		yup(23)=(ycurr(23)+dt*(kca*C*ycurr(8)+2*k2*r2*A*ycurr(22)+3*k1*r1*ycurr(24)))/(1+dt*(koff+2*k1*r1+k2*r2*A));%O4ca
		yup(24)=(ycurr(24)+dt*(kca*C*ycurr(7)+k2*r2*A*ycurr(23)+L3*ycurr(16)))/(1+dt*(koff+3*k1*r1+L2));%O3ca

		ycurr=yup;
		deltaTPrev=deltaT;
		deltaT=deltaTNext;
		deltaTNext=abs(T(i)-(j+1)*dt);
		
		if deltaT<deltaTNext && deltaT<deltaTPrev
			err=err+abs(Acell*10^12*(g12*(ycurr(5)+ycurr(6)+ycurr(15)+ycurr(16))*(V-E12)+g34*(ycurr(7)+ycurr(8)+ycurr(24)+ycurr(23))*(V-E34))-I(i))^2;
			i=i+1;
			Tcurr=T(i);
		end
	end
end