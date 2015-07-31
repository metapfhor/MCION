function [T,I,Y]=naivePerfusionResponseanmarP2X7(ton,toff,Ttot)
	ode=modelODEanmarP2X7(ton,toff);
	naive=zeros(12,1);
	naive(1)=1;
	setAuxiliaryanmarP2X7(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:12));
	I=getTotalCurrentanmarP2X7(Y);
end