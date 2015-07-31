function [T,I,Y]=naivePerfusionResponsephosph1P2X7(ton,toff,Ttot)
	ode=modelODEphosph1P2X7(ton,toff);
	naive=zeros(12,1);
	naive(1)=1;
	setAuxiliaryphosph1P2X7(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:12));
	I=getTotalCurrentphosph1P2X7(Y);
end