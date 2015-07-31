function [T,I,Y]=perfusionResponsepotent1P2X4rev(y0,ton,toff,Ttot)
	ode=modelODEpotent1P2X4rev(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentpotent1P2X4rev(Y);
end