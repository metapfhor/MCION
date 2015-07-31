function err = errorIntegratorP2X4(ton,toff,Ttot,amp,y0,T,I,V)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 alpha Acell;
	dt=getFDTimeStepP2X4(amp);
	
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
		yup(1)=(ycurr(1)+dt*(k1*ycurr(2)+L1*ycurr(3)+H1*ycurr(13)+H4*ycurr(17)))/(1+dt*(k2*A+L2*J));%C1
		yup(2)=(ycurr(2)+dt*(k2*A*ycurr(1)+k3*ycurr(7)+L1*ycurr(4)))/(1+dt*(k1+k4*A+H2+L2*J));%C2
		yup(3)=(ycurr(3)+dt*(k7*ycurr(4)+L2*J*ycurr(1)+L3*ycurr(5)))/(1+dt*(k8*A+L1+L4*J));%C3
		yup(4)=(ycurr(4)+dt*(k8*A*ycurr(3)+k9*ycurr(9)+L2*J*ycurr(2)+L3*ycurr(6)))/(1+dt*(k7+k10*A+L1+L4*J));%C4
		yup(5)=(ycurr(5)+dt*(k7*ycurr(6)+L4*J*ycurr(3)))/(1+dt*(k8*alpha*A+L3));%C5
		yup(6)=(ycurr(6)+dt*(k8*alpha*A*ycurr(5)+k9*ycurr(11)+L4*J*ycurr(4)))/(1+dt*(k7+k10*alpha*A+L3));%C6
		yup(7)=(ycurr(7)+dt*(k4*A*ycurr(2)+k5*ycurr(8)+L1*ycurr(9)))/(1+dt*(k3+k6*A+H2+L2*J));%Q1
		yup(8)=(ycurr(8)+dt*(k6*A*ycurr(7)+L1*ycurr(10)))/(1+dt*(k5+H2+L2*J));%Q2
		yup(9)=(ycurr(9)+dt*(k10*A*ycurr(4)+k11*ycurr(10)+L2*J*ycurr(7)+L3*ycurr(11)))/(1+dt*(k9+k12*A+L1+L4*J));%Q3
		yup(10)=(ycurr(10)+dt*(k12*A*ycurr(9)+L2*J*ycurr(8)+L3*ycurr(12)))/(1+dt*(k11+L1+L4*J));%Q4
		yup(11)=(ycurr(11)+dt*(k10*alpha*A*ycurr(6)+k11*ycurr(12)+L4*J*ycurr(9)))/(1+dt*(k9+k12*alpha*A+L3));%Q5
		yup(12)=(ycurr(12)+dt*(k12*alpha*A*ycurr(11)+L4*J*ycurr(10)))/(1+dt*(k11+L3));%Q6
		yup(13)=(ycurr(13)+dt*(k1*ycurr(14)))/(1+dt*(k2*A+H1));%D1
		yup(14)=(ycurr(14)+dt*(k2*A*ycurr(13)+k3*ycurr(15)+H2*ycurr(2)))/(1+dt*(k1+k4*A));%D2
		yup(15)=(ycurr(15)+dt*(k4*A*ycurr(14)+k5*ycurr(16)+H2*ycurr(7)))/(1+dt*(k3+k6*A));%D3
		yup(16)=(ycurr(16)+dt*(k6*A*ycurr(15)+H2*ycurr(8)))/(1+dt*(k5+H3));%D4
		yup(17)=(ycurr(17)+dt*(H3*ycurr(16)))/(1+dt*(H4));%Z

		ycurr=yup;
		deltaTPrev=deltaT;
		deltaT=deltaTNext;
		deltaTNext=abs(T(i)-(j+1)*dt);
		
		if deltaT<deltaTNext && deltaT<deltaTPrev
			err=err+abs(Acell*10^12*(g1*(ycurr(7)+ycurr(8))*(V-E1)+g2*(ycurr(9)+ycurr(10)+ycurr(11)+ycurr(12))*(V-E2))-I(i))^2;
			i=i+1;
			Tcurr=T(i);
		end
	end
end