function [T,I,Y]=naivePerfusionResponsepotent1P2X4coop(ton,toff,Ttot)
	ode=modelODEpotent1P2X4coop(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliarypotent1P2X4coop(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentpotent1P2X4coop(Y);
end