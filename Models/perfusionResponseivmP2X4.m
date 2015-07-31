function [T,I,Y]=perfusionResponseivmP2X4(y0,ton,toff,Ttot)
	ode=modelODEivmP2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:22));
	I=getTotalCurrentivmP2X4(Y);
end