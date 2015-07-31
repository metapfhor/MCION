function [T,I,Y]=naivePerfusionResponseThreeP2X7Forward(ton,toff,Ttot,amp)
	ode=modelODEThreeP2X7Forward(ton,toff,amp);
	naive=zeros(3,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentThreeP2X7Forward(Y,-60*10^-3);
end