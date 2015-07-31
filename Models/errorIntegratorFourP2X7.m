function err = errorIntegratorFourP2X7(ton,toff,Ttot,amp,dt,y0,T,I,V)
global a1 a2 a3 b1 b2 b3 g12 E12;
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
		yup(1)=(ycurr(1)+dt*(b1*ycurr(2)))/(1+dt*(a1*A));%C1
		yup(2)=(ycurr(2)+dt*(a1*A*ycurr(1)+b2*ycurr(3)))/(1+dt*(b1+a2*A));%C2
		yup(3)=(ycurr(3)+dt*(a2*A*ycurr(2)+b3*ycurr(4)))/(1+dt*(b2+a3*A));%O1
		yup(4)=(ycurr(4)+dt*(a3*A*ycurr(3)))/(1+dt*(b3));%O2

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