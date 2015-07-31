function err = errorIntegratortoyP2X4(ton,toff,Ttot,amp,dt,y0,T,I,V)
global k1 k2 L1 L2 L3 L4 L5 L6 L7 L8 H1 H2 H3 H4 g12 g34 E12 E34;
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
        
		yup(1)=(ycurr(1)+dt*(++k1*G*ycurr(4)+L1*ycurr(2)+H1*ycurr(7)+H4*ycurr(9)))/(1+dt*(+k2*A*F+L4*K));%C1
		yup(2)=(ycurr(2)+dt*(++k1*G*ycurr(5)+L4*K*ycurr(1)+L8*K*ycurr(3)))/(1+dt*(+k2*A*F+L1+L5));%C2
		yup(3)=(ycurr(3)+dt*(++k1*G*ycurr(6)+L5*ycurr(2)))/(1+dt*(+k2*A*F+L8*K));%C3
		yup(4)=(ycurr(4)+dt*(++k2*A*F*ycurr(1)+L2*ycurr(5)))/(1+dt*(+k1*G+H2+L3*K));%O1
		yup(5)=(ycurr(5)+dt*(++k2*A*F*ycurr(2)+L3*K*ycurr(4)+L6*ycurr(6)))/(1+dt*(+k1*G+L2+L7*K));%O2
		yup(6)=(ycurr(6)+dt*(++k2*A*F*ycurr(3)+L7*K*ycurr(5)))/(1+dt*(+k1*G+L6));%O3
		yup(7)=(ycurr(7)+dt*(++k1*ycurr(8)))/(1+dt*(+k2*A+H1));%D1
		yup(8)=(ycurr(8)+dt*(++k2*A*ycurr(7)+H2*ycurr(4)))/(1+dt*(+k1+H3));%D2
		yup(9)=(ycurr(9)+dt*(++H3*ycurr(8)))/(1+dt*(+H4));%N

		ycurr=yup;
		deltaTPrev=deltaT;
		deltaT=deltaTNext;
		deltaTNext=abs(T(i)-(j+1)*dt);
		
		if deltaT<deltaTNext && deltaT<deltaTPrev
			err=err+abs(10^12*(+g12*ycurr(4)*(-V-E12)+g34*(+ycurr(5)+ycurr(6))*(-V-E34))-I(i))^2;
			i=i+1;
			Tcurr=T(i);
		end
	end
end