function [T,I,Y]=perfusionResponsepotentP2X4block(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4block(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:53));
	I=getTotalCurrentpotentP2X4block(Y);
end