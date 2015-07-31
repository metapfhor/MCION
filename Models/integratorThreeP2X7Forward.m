function [T,Y] = integratorThreeP2X7Forward(ton,toff,Ttot,amp,dt,y0)
global k2 k4 g12 E12;
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,3);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*())/(1+dt*(3*k2*A));%C1
		Y(j+1,2)=(Y(j,2)+dt*(3*k2*A+Y(j,1)))/(1+dt*(2*k4*A));%C2
		Y(j+1,3)=(Y(j,3)+dt*(2*k4*A+Y(j,2)))/(1+dt*());%O1
	end
end