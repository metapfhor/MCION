function [T,I,Y]=perfusionResponseanmarP2X4inact(y0,ton,toff,Ttot)
	ode=modelODEanmarP2X4inact(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:14));
	I=getTotalCurrentanmarP2X4inact(Y);
end