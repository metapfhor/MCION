function [T,I,Y]=perfusionResponseP2X4Stack2(y0,ton,toff,Ttot)
	ode=modelODEP2X4Stack2(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:33));
	I=getTotalCurrentP2X4Stack2(Y);
end