function err = errorIntegratorFourP2X7Forward(ton,toff,Ttot,amp,dt,y0,T,I,V)
global k2 k4 k6 g12 E12;
	%#codegen
	nT=floor(Ttot)/dt;
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
		yup(1)=(ycurr(1)+dt*())/(1+dt*(3*k2*A));%C1
		yup(2)=(ycurr(2)+dt*(3*k2*A*ycurr(1)))/(1+dt*(2*k4*A));%C2
		yup(3)=(ycurr(3)+dt*(2*k4*A*ycurr(2)))/(1+dt*(k6*A));%O1
		yup(4)=(ycurr(4)+dt*(k6*A*ycurr(3)))/(1+dt*());%O2

		ycurr=yup;
		deltaTPrev=deltaT;
		deltaT=deltaTNext;
		deltaTNext=abs(T(i)-(j+1)*dt);
		
		if deltaT<deltaTNext && deltaT<deltaTPrev
			err=err+abs(10^12*g12*(ycurr(3)+ycurr(4))*(V-E12)-I(i))^2;
			i=i+1;
			Tcurr=T(i);
		end
	end
end