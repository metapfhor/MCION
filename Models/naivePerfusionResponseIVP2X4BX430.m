function [T,I,Y]=naivePerfusionResponseIVP2X4BX430(ton,toff,Ttot)
	ode=modelODEP2X4BX430(ton,toff);
	naive=zeros(34,1);
	naive(1)=1;
	setAuxiliaryP2X4BX430(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:34,'MaxStep',0.01));
	I=getTotalCurrentP2X4BX430(Y);
end