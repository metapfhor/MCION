function [T,I,Y]=perfusionResponseomarP2X4cooppotent1(y0,ton,toff,Ttot)
	ode=modelODEomarP2X4cooppotent1(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:21));
	I=getTotalCurrentomarP2X4cooppotent1(Y);
end