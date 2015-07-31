function [T,I,Y]=perfusionResponsefactorP2X4coop(y0,ton,toff,Ttot)
	ode=modelODEfactorP2X4coop(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentfactorP2X4coop(Y);
end