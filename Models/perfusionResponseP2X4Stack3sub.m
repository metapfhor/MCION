function [T,I,Y]=perfusionResponseP2X4Stack3sub(y0,ton,toff,Ttot)
	ode=modelODEP2X4Stack3sub(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:9));
	I=getTotalCurrentP2X4Stack3sub(Y);
end