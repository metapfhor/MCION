function [T,I,Y]=perfusionResponseP2X4StackDeMix4(y0,ton,toff,Ttot)
	ode=modelODEP2X4StackDeMix4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:25));
	I=getTotalCurrentP2X4StackDeMix4(Y);
end