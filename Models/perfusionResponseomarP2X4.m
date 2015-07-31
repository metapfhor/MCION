function [T,I,Y]=perfusionResponseomarP2X4(y0,ton,toff,Ttot)
	ode=modelODEomarP2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentomarP2X4(Y);
end