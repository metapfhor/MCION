function [T,I,Y]=perfusionResponsepotent1P2X4coop(y0,ton,toff,Ttot)
	ode=modelODEpotent1P2X4coop(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentpotent1P2X4coop(Y);
end