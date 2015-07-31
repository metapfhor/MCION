function [T,I,Y]=naivePerfusionResponsephosph2P2X7(ton,toff,Ttot)
	ode=modelODEphosph2P2X7(ton,toff);
	naive=zeros(16,1);
	naive(1)=1;
	setAuxiliaryphosph2P2X7(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:16));
	I=getTotalCurrentphosph2P2X7(Y);
end