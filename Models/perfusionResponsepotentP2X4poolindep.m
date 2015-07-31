function [T,I,Y]=perfusionResponsepotentP2X4poolindep(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4poolindep(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:33));
	I=getTotalCurrentpotentP2X4poolindep(Y);
end