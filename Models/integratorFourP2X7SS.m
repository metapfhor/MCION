function [T,Y] = integratorFourP2X7SS(ton,toff,Ttot,amp,dt,y0)
global R L1 L2 k3 k5 k6 g12 E12;
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,2);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*())/(1+dt*());%O1
		Y(j+1,2)=(Y(j,2)+dt*())/(1+dt*());%O2
	end
end