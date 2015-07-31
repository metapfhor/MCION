function [T,I,Y]=naivePerfusionResponsepotentP2X4pool(ton,toff,Ttot)
	ode=modelODEpotentP2X4pool(ton,toff);
	naive=zeros(33,1);
	naive(1)=1;
	setAuxiliarypotentP2X4pool(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33));
	I=getTotalCurrentpotentP2X4pool(Y);
end