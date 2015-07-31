function [T,I,Y]=perfusionResponsepotent2P2X4(y0,ton,toff,Ttot)
	ode=modelODEpotent2P2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentpotent2P2X4(Y);
end