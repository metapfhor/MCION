function [T,I,Y]=naivePerfusionResponseP2X4StackDeMix(ton,toff,Ttot)
	ode=modelODEP2X4StackDeMix(ton,toff);
	naive=zeros(33,1);
	naive(1)=1;
	setAuxiliaryP2X4StackDeMix(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33));
	I=getTotalCurrentP2X4StackDeMix(Y);
end