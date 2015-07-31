function [T,I,Y]=perfusionResponsepotentP2X4pool(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4pool(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:33));
	I=getTotalCurrentpotentP2X4pool(Y);
end