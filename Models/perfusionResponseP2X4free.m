function [T,I,Y]=perfusionResponseP2X4free(y0,ton,toff,Ttot)
	ode=modelODEP2X4free(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentP2X4free(Y);
end