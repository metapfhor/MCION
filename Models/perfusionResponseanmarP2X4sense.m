function [T,I,Y]=perfusionResponseanmarP2X4sense(y0,ton,toff,Ttot)
	ode=modelODEanmarP2X4sense(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:13));
	I=getTotalCurrentanmarP2X4sense(Y);
end