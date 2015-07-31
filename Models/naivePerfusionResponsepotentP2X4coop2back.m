function [T,I,Y]=naivePerfusionResponsepotentP2X4coop2back(ton,toff,Ttot)
	ode=modelODEpotentP2X4coop2back(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliarypotentP2X4coop2back(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21,'MaxStep',0.01));
	I=getTotalCurrentpotentP2X4coop2back(Y);
end