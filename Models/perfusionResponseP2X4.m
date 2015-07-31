function [T,I,Y]=perfusionResponseP2X4(ton,toff,Ttot,y0)
	ode=modelODEP2X4(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0);
	I=getTotalCurrentP2X4(Y);
end