function [T,I,Y]=perfusionResponsepotentP2X4cooprev(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4cooprev(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:37));
	I=getTotalCurrentpotentP2X4cooprev(Y);
end