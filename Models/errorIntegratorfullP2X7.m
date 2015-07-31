function err = errorIntegratorfullP2X7(ton,toff,Ttot,amp,y0,T,I,V)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V Acell;
	dt=getFDTimeStepfullP2X7(amp);
	
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
		yup(1)=(ycurr(1)+dt*(k1*ycurr(2)+L1*ycurr(4)+H1*ycurr(9)))/(1+dt*(3*k2*A));%C1
		yup(2)=(ycurr(2)+dt*(3*k2*A*ycurr(1)+2*k3*ycurr(5)+H2*ycurr(10)))/(1+dt*(k1+2*k4*A+H3));%C2
		yup(3)=(ycurr(3)+dt*(3*k2*A*ycurr(4)+2*k1*ycurr(8)))/(1+dt*(k1+2*k2*A));%C3
		yup(4)=(ycurr(4)+dt*(k1*ycurr(3)))/(1+dt*(3*k2*A+L1));%C4
		yup(5)=(ycurr(5)+dt*(2*k4*A*ycurr(2)+3*k5*ycurr(6)+H4*ycurr(11)))/(1+dt*(2*k3+k6*A+H5));%O1
		yup(6)=(ycurr(6)+dt*(k6*A*ycurr(5)+L2*ycurr(7)+H6*ycurr(12)))/(1+dt*(3*k5+L3+H7));%O2
		yup(7)=(ycurr(7)+dt*(k2*A*ycurr(8)+L3*ycurr(6)))/(1+dt*(3*k1+L2));%O3
		yup(8)=(ycurr(8)+dt*(2*k2*A*ycurr(3)+3*k1*ycurr(7)))/(1+dt*(2*k1+k2*A));%O4
		yup(9)=(ycurr(9)+dt*(k1*ycurr(10)))/(1+dt*(3*k2*A+H1));%D1
		yup(10)=(ycurr(10)+dt*(3*k2*A*ycurr(9)+2*k3*ycurr(11)+H3*ycurr(2)))/(1+dt*(k1+2*k4*A+H2));%D2
		yup(11)=(ycurr(11)+dt*(2*k4*A*ycurr(10)+3*k5*ycurr(12)+H5*ycurr(5)))/(1+dt*(2*k3+k6*A+H4));%D3
		yup(12)=(ycurr(12)+dt*(k6*A*ycurr(11)+H7*ycurr(6)))/(1+dt*(3*k5+H6));%D4

		ycurr=yup;
		deltaTPrev=deltaT;
		deltaT=deltaTNext;
		deltaTNext=abs(T(i)-(j+1)*dt);
		
		if deltaT<deltaTNext && deltaT<deltaTPrev
			err=err+abs(Acell*10^12*(g12*(ycurr(5)+ycurr(6))*(V-E12)+g34*(ycurr(7)+ycurr(8))*(V-E34))-I(i))^2;
			i=i+1;
			Tcurr=T(i);
		end
	end
end