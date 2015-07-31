function [T,I,Y]=perfusionResponseP2X4freeDe(y0,ton,toff,Ttot)
	ode=modelODEP2X4freeDe(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentP2X4freeDe(Y);
end