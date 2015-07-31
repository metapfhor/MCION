function [T,I,Y]=naivePerfusionResponseIVanmarP2X4tri(ton,toff,Ttot)
	ode=modelODEanmarP2X4tri(ton,toff);
	naive=getNaiveanmarP2X4tri();
	setAuxiliaryanmarP2X4tri(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:14,'MaxStep',0.01));
	I=getTotalCurrentanmarP2X4tri(Y);
end