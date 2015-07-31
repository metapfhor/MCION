function [T,I,Y]=perfusionResponsepotentP2X4(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:37));
	I=getTotalCurrentpotentP2X4(Y);
end