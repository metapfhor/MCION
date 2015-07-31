function [T,I,Y]=perfusionResponsepotentP2X4sub(y0,ton,toff,Ttot)
	ode=modelODEpotentP2X4sub(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:9));
	I=getTotalCurrentpotentP2X4sub(Y);
end