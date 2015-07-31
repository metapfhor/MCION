function [T,I,Y]=naivePerfusionResponsepotentP2X4sub(ton,toff,Ttot)
	ode=modelODEpotentP2X4sub(ton,toff);
	naive=zeros(9,1);
	naive(1)=1;
	setAuxiliarypotentP2X4sub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:9));
	I=getTotalCurrentpotentP2X4sub(Y);
end