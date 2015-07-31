function [T,I,Y]=perfusionResponseomarP2X4coop(y0,ton,toff,Ttot)
	ode=modelODEomarP2X4coop(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentomarP2X4coop(Y);
end