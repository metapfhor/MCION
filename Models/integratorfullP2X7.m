function [T,Y] = integratorfullP2X7(ton,toff,Ttot,amp,y0)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 g12 g34 E12 E34 A V;
	dt=getFDTimeStepfullP2X7(amp);
	
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,12);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*(k1*Y(j,2)+L1*Y(j,4)+H1*Y(j,9)))/(1+dt*(3*k2*A));%C1
		Y(j+1,2)=(Y(j,2)+dt*(3*k2*A*Y(j,1)+2*k3*Y(j,5)+H2*Y(j,10)))/(1+dt*(k1+2*k4*A+H3));%C2
		Y(j+1,3)=(Y(j,3)+dt*(3*k2*A*Y(j,4)+2*k1*Y(j,8)))/(1+dt*(k1+2*k2*A));%C3
		Y(j+1,4)=(Y(j,4)+dt*(k1*Y(j,3)))/(1+dt*(3*k2*A+L1));%C4
		Y(j+1,5)=(Y(j,5)+dt*(2*k4*A*Y(j,2)+3*k5*Y(j,6)+H4*Y(j,11)))/(1+dt*(2*k3+k6*A+H5));%O1
		Y(j+1,6)=(Y(j,6)+dt*(k6*A*Y(j,5)+L2*Y(j,7)+H6*Y(j,12)))/(1+dt*(3*k5+L3+H7));%O2
		Y(j+1,7)=(Y(j,7)+dt*(k2*A*Y(j,8)+L3*Y(j,6)))/(1+dt*(3*k1+L2));%O3
		Y(j+1,8)=(Y(j,8)+dt*(2*k2*A*Y(j,3)+3*k1*Y(j,7)))/(1+dt*(2*k1+k2*A));%O4
		Y(j+1,9)=(Y(j,9)+dt*(k1*Y(j,10)))/(1+dt*(3*k2*A+H1));%D1
		Y(j+1,10)=(Y(j,10)+dt*(3*k2*A*Y(j,9)+2*k3*Y(j,11)+H3*Y(j,2)))/(1+dt*(k1+2*k4*A+H2));%D2
		Y(j+1,11)=(Y(j,11)+dt*(2*k4*A*Y(j,10)+3*k5*Y(j,12)+H5*Y(j,5)))/(1+dt*(2*k3+k6*A+H4));%D3
		Y(j+1,12)=(Y(j,12)+dt*(k6*A*Y(j,11)+H7*Y(j,6)))/(1+dt*(3*k5+H6));%D4
	end
end