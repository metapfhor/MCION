function [T,I,Y]=naivePerfusionResponseanmarP2X4sense(ton,toff,Ttot)
	ode=modelODEanmarP2X4sense(ton,toff);
	naive=getNaiveanmarP2X4sense();
	setAuxiliaryanmarP2X4sense(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:13));
	I=getTotalCurrentanmarP2X4sense(Y);
end