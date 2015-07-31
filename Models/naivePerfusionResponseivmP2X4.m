function [T,I,Y]=naivePerfusionResponseivmP2X4(ton,toff,Ttot)
	ode=modelODEivmP2X4(ton,toff);
	naive=zeros(22,1);
	naive(1)=1;
	setAuxiliaryivmP2X4(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:22));
	I=getTotalCurrentivmP2X4(Y);
end