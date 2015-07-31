function [T,I,Y]=perfusionResponseP2X4Inact2factor(y0,ton,toff,Ttot)
	ode=modelODEP2X4Inact2factor(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:34));
	I=getTotalCurrentP2X4Inact2factor(Y);
end