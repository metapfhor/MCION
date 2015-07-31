function [T,I,Y]=naivePerfusionResponsepotent2P2X4(ton,toff,Ttot)
	ode=modelODEpotent2P2X4(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliarypotent2P2X4(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentpotent2P2X4(Y);
end