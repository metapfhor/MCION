function [T,I,Y]=perfusionResponsepotentP2X4coop2back(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4coop2back(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentpotentP2X4coop2back(Y);
end