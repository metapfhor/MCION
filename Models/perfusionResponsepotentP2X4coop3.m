function [T,I,Y]=perfusionResponsepotentP2X4coop3(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4coop3(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentpotentP2X4coop3(Y);
end