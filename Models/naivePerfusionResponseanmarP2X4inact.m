function [T,I,Y]=naivePerfusionResponseanmarP2X4inact(ton,toff,Ttot)
	ode=modelODEanmarP2X4inact(ton,toff);
	naive=getNaiveanmarP2X4inact();
	setAuxiliaryanmarP2X4inact(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:14));
	I=getTotalCurrentanmarP2X4inact(Y);
end