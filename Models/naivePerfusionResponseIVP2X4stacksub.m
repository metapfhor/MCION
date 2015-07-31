function [T,I,Y]=naivePerfusionResponseIVP2X4stacksub(ton,toff,Ttot)
	ode=modelODEP2X4stacksub(ton,toff);
	naive=zeros(7,1);
	naive(1)=1;
	setAuxiliaryP2X4stacksub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:7,'MaxStep',0.01));
	I=getTotalCurrentP2X4stacksub(Y);
end