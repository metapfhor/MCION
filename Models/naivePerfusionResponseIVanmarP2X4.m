function [T,I,Y]=naivePerfusionResponseIVanmarP2X4(ton,toff,Ttot)
	ode=modelODEanmarP2X4(ton,toff);
	naive=getNaiveanmarP2X4();
	setAuxiliaryanmarP2X4(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:13,'MaxStep',0.01));
	I=getTotalCurrentanmarP2X4(Y);
end