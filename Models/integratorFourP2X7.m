function [T,Y] = integratorFourP2X7(ton,toff,Ttot,amp,dt,y0)
global a1 a2 a3 b1 b2 b3 g12 E12;
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,4);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*(b1*Y(j,2)))/(1+dt*(a1*A));%C1
		Y(j+1,2)=(Y(j,2)+dt*(a1*A*Y(j,1)+b2*Y(j,3)))/(1+dt*(b1+a2*A));%C2
		Y(j+1,3)=(Y(j,3)+dt*(a2*A*Y(j,2)+b3*Y(j,4)))/(1+dt*(b2+a3*A));%O1
		Y(j+1,4)=(Y(j,4)+dt*(a3*A*Y(j,3)))/(1+dt*(b3));%O2
	end
end