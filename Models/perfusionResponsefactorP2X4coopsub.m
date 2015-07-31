function [T,I,Y]=perfusionResponsefactorP2X4coopsub(y0,ton,toff,Ttot)
	ode=modelODEfactorP2X4coopsub(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:9));
	I=getTotalCurrentfactorP2X4coopsub(Y);
end