function [T,Y] = integratorP2X4(ton,toff,Ttot,amp,y0)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 alpha;
	dt=getFDTimeStepP2X4(amp);
	
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,17);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*(k1*Y(j,2)+L1*Y(j,3)+H1*Y(j,13)+H4*Y(j,17)))/(1+dt*(k2*A+L2*J));%C1
		Y(j+1,2)=(Y(j,2)+dt*(k2*A*Y(j,1)+k3*Y(j,7)+L1*Y(j,4)))/(1+dt*(k1+k4*A+H2+L2*J));%C2
		Y(j+1,3)=(Y(j,3)+dt*(k7*Y(j,4)+L2*J*Y(j,1)+L3*Y(j,5)))/(1+dt*(k8*A+L1+L4*J));%C3
		Y(j+1,4)=(Y(j,4)+dt*(k8*A*Y(j,3)+k9*Y(j,9)+L2*J*Y(j,2)+L3*Y(j,6)))/(1+dt*(k7+k10*A+L1+L4*J));%C4
		Y(j+1,5)=(Y(j,5)+dt*(k7*Y(j,6)+L4*J*Y(j,3)))/(1+dt*(k8*alpha*A+L3));%C5
		Y(j+1,6)=(Y(j,6)+dt*(k8*alpha*A*Y(j,5)+k9*Y(j,11)+L4*J*Y(j,4)))/(1+dt*(k7+k10*alpha*A+L3));%C6
		Y(j+1,7)=(Y(j,7)+dt*(k4*A*Y(j,2)+k5*Y(j,8)+L1*Y(j,9)))/(1+dt*(k3+k6*A+H2+L2*J));%Q1
		Y(j+1,8)=(Y(j,8)+dt*(k6*A*Y(j,7)+L1*Y(j,10)))/(1+dt*(k5+H2+L2*J));%Q2
		Y(j+1,9)=(Y(j,9)+dt*(k10*A*Y(j,4)+k11*Y(j,10)+L2*J*Y(j,7)+L3*Y(j,11)))/(1+dt*(k9+k12*A+L1+L4*J));%Q3
		Y(j+1,10)=(Y(j,10)+dt*(k12*A*Y(j,9)+L2*J*Y(j,8)+L3*Y(j,12)))/(1+dt*(k11+L1+L4*J));%Q4
		Y(j+1,11)=(Y(j,11)+dt*(k10*alpha*A*Y(j,6)+k11*Y(j,12)+L4*J*Y(j,9)))/(1+dt*(k9+k12*alpha*A+L3));%Q5
		Y(j+1,12)=(Y(j,12)+dt*(k12*alpha*A*Y(j,11)+L4*J*Y(j,10)))/(1+dt*(k11+L3));%Q6
		Y(j+1,13)=(Y(j,13)+dt*(k1*Y(j,14)))/(1+dt*(k2*A+H1));%D1
		Y(j+1,14)=(Y(j,14)+dt*(k2*A*Y(j,13)+k3*Y(j,15)+H2*Y(j,2)))/(1+dt*(k1+k4*A));%D2
		Y(j+1,15)=(Y(j,15)+dt*(k4*A*Y(j,14)+k5*Y(j,16)+H2*Y(j,7)))/(1+dt*(k3+k6*A));%D3
		Y(j+1,16)=(Y(j,16)+dt*(k6*A*Y(j,15)+H2*Y(j,8)))/(1+dt*(k5+H3));%D4
		Y(j+1,17)=(Y(j,17)+dt*(H3*Y(j,16)))/(1+dt*(H4));%Z
	end
end