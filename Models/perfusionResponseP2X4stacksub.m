function [T,I,Y]=perfusionResponseP2X4stacksub(y0,ton,toff,Ttot)
	ode=modelODEP2X4stacksub(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:7));
	I=getTotalCurrentP2X4stacksub(Y);
end