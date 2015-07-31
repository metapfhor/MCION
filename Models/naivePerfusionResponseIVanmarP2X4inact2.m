function [T,I,Y]=naivePerfusionResponseIVanmarP2X4inact2(ton,toff,Ttot)
	ode=modelODEanmarP2X4inact2(ton,toff);
	naive=getNaiveanmarP2X4inact2();
	setAuxiliaryanmarP2X4inact2(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:14,'MaxStep',0.01));
	I=getTotalCurrentanmarP2X4inact2(Y);
end