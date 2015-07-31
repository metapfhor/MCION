function [T,I,Y]=perfusionResponseanmarP2X4(y0,ton,toff,Ttot)
	ode=modelODEanmarP2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:13));
	I=getTotalCurrentanmarP2X4(Y);
end