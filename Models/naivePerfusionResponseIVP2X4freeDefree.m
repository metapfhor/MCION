function [T,I,Y]=naivePerfusionResponseIVP2X4freeDefree(ton,toff,Ttot)
	ode=modelODEP2X4freeDefree(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliaryP2X4freeDefree(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21,'MaxStep',0.01));
	I=getTotalCurrentP2X4freeDefree(Y);
end