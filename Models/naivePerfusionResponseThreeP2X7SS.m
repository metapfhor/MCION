function [t,I,Y]=naivePerfusionResponseThreeP2X7SS(ton,toff,Ttot,amp)
global R k3 g12 E12;
	dt=0.01;
	A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	
	t=0:dt:Ttot.';
	Y=zeros(length(t),1);
	
	Y(:,1)=R.*(1-exp(-2*k3*t));
	I=getTotalCurrentThreeP2X7SS(Y,-60*10^-3);
end