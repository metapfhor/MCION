function [T,I,Y]=naivePerfusionResponsephosph3P2X7(ton,toff,Ttot)
	ode=modelODEphosph3P2X7(ton,toff);
	naive=zeros(20,1);
	naive(1)=1;
	setAuxiliaryphosph3P2X7(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:20));
	I=getTotalCurrentphosph3P2X7(Y);
end