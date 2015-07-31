function [T,I,Y]=naivePerfusionResponsepotentP2X4block2(ton,toff,Ttot)
	ode=modelODEpotentP2X4block2(ton,toff);
	naive=zeros(53,1);
	naive(1)=1;
	setAuxiliarypotentP2X4block2(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:53));
	I=getTotalCurrentpotentP2X4block2(Y);
end