function [T,Y] = integratorThreeP2X7SS(ton,toff,Ttot,amp,dt,y0)
global R k3 g12 E12;
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,1);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*(2*k4*A*1/(1+k1/3*k2*A)))/(1+dt*(2*k3));%O1
	end
end