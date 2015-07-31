function [T,Y] = integratorcalP2X7(ton,toff,Ttot,amp,y0)
global k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 H5 H6 H7 r1 r2 kca koff C g12 g34 E12 E34 A V;
	dt=getFDTimeStepcalP2X7(amp);
	
	%#codegen
	T=(0:dt:Ttot).';
	nT=floor(Ttot)/dt;
	Y=zeros(nT,24);
	Y(1,:)=y0;
	for j=1:nT-1
		A=amp*(heavi(T(j)-ton)-heavi(T(j)-toff));
		Y(j+1,1)=(Y(j,1)+dt*(koff*Y(j,13)+k1*Y(j,2)+L1*Y(j,4)+H1*Y(j,9)))/(1+dt*(kca*C+3*k2*A));%C1
		Y(j+1,2)=(Y(j,2)+dt*(koff*Y(j,14)+3*k2*A*Y(j,1)+2*k3*Y(j,5)+H2*Y(j,10)))/(1+dt*(kca*C+k1+2*k4*A+H3));%C2
		Y(j+1,3)=(Y(j,3)+dt*(koff*Y(j,22)+3*k2*A*Y(j,4)+2*k1*Y(j,8)))/(1+dt*(kca*C+k1+2*k2*A));%C3
		Y(j+1,4)=(Y(j,4)+dt*(koff*Y(j,21)+k1*Y(j,3)))/(1+dt*(kca*C+3*k2*A+L1));%C4
		Y(j+1,5)=(Y(j,5)+dt*(koff*Y(j,15)+2*k4*A*Y(j,2)+3*k5*Y(j,6)+H4*Y(j,11)))/(1+dt*(kca*C+2*k3+k6*A+H5));%O1
		Y(j+1,6)=(Y(j,6)+dt*(koff*Y(j,16)+k6*A*Y(j,5)+L2*Y(j,7)+H6*Y(j,12)))/(1+dt*(kca*C+3*k5+L3+H7));%O2
		Y(j+1,7)=(Y(j,7)+dt*(koff*Y(j,24)+k2*A*Y(j,8)+L3*Y(j,6)))/(1+dt*(kca*C+3*k1+L2));%O3
		Y(j+1,8)=(Y(j,8)+dt*(koff*Y(j,23)+2*k2*A*Y(j,3)+3*k1*Y(j,7)))/(1+dt*(kca*C+2*k1+k2*A));%O4
		Y(j+1,9)=(Y(j,9)+dt*(koff*Y(j,17)+k1*Y(j,10)))/(1+dt*(kca*C+3*k2*A+H1));%D1
		Y(j+1,10)=(Y(j,10)+dt*(koff*Y(j,18)+3*k2*A*Y(j,9)+2*k3*Y(j,11)+H3*Y(j,2)))/(1+dt*(kca*C+k1+2*k4*A+H2));%D2
		Y(j+1,11)=(Y(j,11)+dt*(koff*Y(j,19)+2*k4*A*Y(j,10)+3*k5*Y(j,12)+H5*Y(j,5)))/(1+dt*(kca*C+2*k3+k6*A+H4));%D3
		Y(j+1,12)=(Y(j,12)+dt*(koff*Y(j,20)+k6*A*Y(j,11)+H7*Y(j,6)))/(1+dt*(kca*C+3*k5+H6));%D4
		Y(j+1,13)=(Y(j,13)+dt*(kca*C*Y(j,1)+k1*r1*Y(j,14)+L1*Y(j,21)+H1*Y(j,17)))/(1+dt*(koff+3*k2*r2*A));%C1ca
		Y(j+1,14)=(Y(j,14)+dt*(kca*C*Y(j,2)+3*k2*r2*A*Y(j,13)+2*k3*r1*Y(j,15)+H2*Y(j,18)))/(1+dt*(koff+k1*r1+2*k4*r2*A+H3));%C2ca
		Y(j+1,15)=(Y(j,15)+dt*(kca*C*Y(j,5)+2*k4*r2*A*Y(j,14)+3*k5*r1*Y(j,16)+H4*Y(j,19)))/(1+dt*(koff+2*k3*r1+k6*r2*A+H5));%O1ca
		Y(j+1,16)=(Y(j,16)+dt*(kca*C*Y(j,6)+k6*r2*A*Y(j,15)+L2*Y(j,24)+H6*Y(j,20)))/(1+dt*(koff+3*k5*r1+L3+H7));%O2ca
		Y(j+1,17)=(Y(j,17)+dt*(kca*C*Y(j,9)+k1*r1*Y(j,18)))/(1+dt*(koff+3*k2*r2*A+H1));%D1ca
		Y(j+1,18)=(Y(j,18)+dt*(kca*C*Y(j,10)+3*k2*r2*A*Y(j,17)+2*k3*r1*Y(j,19)+H3*Y(j,14)))/(1+dt*(koff+k1*r1+2*k4*r2*A+H2));%D2ca
		Y(j+1,19)=(Y(j,19)+dt*(kca*C*Y(j,11)+2*k4*r2*A*Y(j,18)+3*k5*r1*Y(j,20)+H5*Y(j,15)))/(1+dt*(koff+2*k3*r1+k6*r2*A+H4));%D3ca
		Y(j+1,20)=(Y(j,20)+dt*(kca*C*Y(j,12)+k6*r2*A*Y(j,19)+H7*Y(j,16)))/(1+dt*(koff+3*k5*r1+H6));%D4ca
		Y(j+1,21)=(Y(j,21)+dt*(kca*C*Y(j,4)+k1*r1*Y(j,22)))/(1+dt*(koff+3*k2*r2*A+L1));%C4ca
		Y(j+1,22)=(Y(j,22)+dt*(kca*C*Y(j,3)+3*k2*r2*A*Y(j,21)+2*k1*r1*Y(j,23)))/(1+dt*(koff+k1*r1+2*k2*r2*A));%C3ca
		Y(j+1,23)=(Y(j,23)+dt*(kca*C*Y(j,8)+2*k2*r2*A*Y(j,22)+3*k1*r1*Y(j,24)))/(1+dt*(koff+2*k1*r1+k2*r2*A));%O4ca
		Y(j+1,24)=(Y(j,24)+dt*(kca*C*Y(j,7)+k2*r2*A*Y(j,23)+L3*Y(j,16)))/(1+dt*(koff+3*k1*r1+L2));%O3ca
	end
end