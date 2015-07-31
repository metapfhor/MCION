function [T,I,Y]=naivePerfusionResponseP2X4StackEq(ton,toff,Ttot)
	ode=modelODEP2X4StackEq(ton,toff);
	naive=zeros(25,1);
	naive(1)=1;
	setAuxiliaryP2X4StackEq(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:25));
	I=getTotalCurrentP2X4StackEq(Y);
end