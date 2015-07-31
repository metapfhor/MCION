function [T,I,Y]=perfusionResponseP2X4stack(y0,ton,toff,Ttot)
	ode=modelODEP2X4stack(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:25));
	I=getTotalCurrentP2X4stack(Y);
end