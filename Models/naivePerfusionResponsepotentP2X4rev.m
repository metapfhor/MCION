function [T,I,Y]=naivePerfusionResponsepotentP2X4rev(ton,toff,Ttot)
	ode=modelODEpotentP2X4rev(ton,toff);
	naive=zeros(37,1);
	naive(1)=1;
	setAuxiliarypotentP2X4rev(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:37));
	I=getTotalCurrentpotentP2X4rev(Y);
end