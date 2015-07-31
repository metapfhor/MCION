function [T,I,Y]=naivePerfusionResponsepotentP2X4dil(ton,toff,Ttot)
	ode=modelODEpotentP2X4dil(ton,toff);
	naive=zeros(37,1);
	naive(1)=1;
	setAuxiliarypotentP2X4dil(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:37));
	I=getTotalCurrentpotentP2X4dil(Y);
end