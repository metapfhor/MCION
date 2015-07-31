function [T,I,Y]=perfusionResponseP2X4Inactsub(y0,ton,toff,Ttot)
	ode=modelODEP2X4Inactsub(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:10));
	I=getTotalCurrentP2X4Inactsub(Y);
end