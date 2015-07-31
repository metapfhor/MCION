function [T,I,Y]=naivePerfusionResponseIVP2X4stack(ton,toff,Ttot)
	ode=modelODEP2X4stack(ton,toff);
	naive=zeros(25,1);
	naive(1)=1;
	setAuxiliaryP2X4stack(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:25,'MaxStep',0.01));
	I=getTotalCurrentP2X4stack(Y);
end