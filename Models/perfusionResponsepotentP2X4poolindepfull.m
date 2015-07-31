function [T,I,Y]=perfusionResponsepotentP2X4poolindepfull(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4poolindepfull(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:37));
	I=getTotalCurrentpotentP2X4poolindepfull(Y);
end