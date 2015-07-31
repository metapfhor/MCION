function [T,I,Y]=naivePerfusionResponsepotentP2X4poolindep(ton,toff,Ttot)
	ode=modelODEpotentP2X4poolindep(ton,toff);
	naive=zeros(33,1);
	naive(1)=1;
	setAuxiliarypotentP2X4poolindep(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33));
	I=getTotalCurrentpotentP2X4poolindep(Y);
end