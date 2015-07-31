function [T,Y] = integratortwoRowP2X7(ton,toff,Ttot,amp,dt,y0)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 g12 g34 E12 E34;
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,8);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*(k1*Y(j,2)+L1*Y(j,4)))/(1+dt*(3*k2*A));%C1
		Y(j+1,2)=(Y(j,2)+dt*(3*k2*A*Y(j,1)+2*k3*Y(j,5)))/(1+dt*(k1+2*k4*A));%C2
		Y(j+1,3)=(Y(j,3)+dt*(3*k2*A*Y(j,4)+2*k1*Y(j,8)))/(1+dt*(k1+2*k2*A));%C3
		Y(j+1,4)=(Y(j,4)+dt*(k1*Y(j,3)))/(1+dt*(3*k2*A+L1));%C4
		Y(j+1,5)=(Y(j,5)+dt*(2*k4*A*Y(j,2)+3*k5*Y(j,6)))/(1+dt*(2*k3+k6*A));%O1
		Y(j+1,6)=(Y(j,6)+dt*(k6*A*Y(j,5)+L2*Y(j,7)))/(1+dt*(3*k5+L3));%O2
		Y(j+1,7)=(Y(j,7)+dt*(k2*A*Y(j,8)+L3*Y(j,6)))/(1+dt*(3*k1+L2));%O3
		Y(j+1,8)=(Y(j,8)+dt*(2*k2*A*Y(j,3)+3*k1*Y(j,7)))/(1+dt*(2*k1+k2*A));%O4
	end
end