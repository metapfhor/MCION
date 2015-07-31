function [T,I,Y]=perfusionResponsefactorP2X4del(y0,ton,toff,Ttot)
	ode=modelODEfactorP2X4del(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentfactorP2X4del(Y);
end