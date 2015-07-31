function [T,I,Y]=perfusionResponseP2X4StackEq(y0,ton,toff,Ttot)
	ode=modelODEP2X4StackEq(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:25));
	I=getTotalCurrentP2X4StackEq(Y);
end