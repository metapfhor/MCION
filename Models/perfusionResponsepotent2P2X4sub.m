function [T,I,Y]=perfusionResponsepotent2P2X4sub(y0,ton,toff,Ttot)
	ode=modelODEpotent2P2X4sub(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:9));
	I=getTotalCurrentpotent2P2X4sub(Y);
end