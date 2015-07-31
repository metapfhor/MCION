function [T,I,Y]=perfusionResponseP2X4Inact1factor(y0,ton,toff,Ttot)
	ode=modelODEP2X4Inact1factor(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:22));
	I=getTotalCurrentP2X4Inact1factor(Y);
end