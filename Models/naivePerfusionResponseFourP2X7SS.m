function [t,I,Y]=naivePerfusionResponseFourP2X7SS(ton,toff,Ttot,amp)
global R L1 L2 k3 k5 k6 g12 E12;
	dt=0.01;
	A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	
	t=0:dt:Ttot.';
	Y=zeros(length(t),2);
	
	Y(:,1)=R*(1-exp(-2*k3*t));
	
	Y(:,2)=((L1+L2)-L1*exp(-2*k3*t)-L2*exp(-3*k5*t));
	I=getTotalCurrentFourP2X7SS(Y,-60*10^-3);
end