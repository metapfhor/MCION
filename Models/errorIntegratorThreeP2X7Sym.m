function err = errorIntegratorThreeP2X7Sym(ton,toff,Ttot,amp,dt,y0,T,I,V)
global a b g12 E12;
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
		yup(1)=(ycurr(1)+dt*())/(1+dt*());%O1

		ycurr=yup;
		deltaTPrev=deltaT;
		deltaT=deltaTNext;
		deltaTNext=abs(T(i)-(j+1)*dt);
		
		if deltaT<deltaTNext && deltaT<deltaTPrev
			err=err+abs(10^12*g12*ycurr(1)*(V-E12)-I(i))^2;
			i=i+1;
			Tcurr=T(i);
		end
	end
end