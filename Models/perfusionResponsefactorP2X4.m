function [T,I,Y]=perfusionResponsefactorP2X4(y0,ton,toff,Ttot)
	ode=modelODEfactorP2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentfactorP2X4(Y);
end