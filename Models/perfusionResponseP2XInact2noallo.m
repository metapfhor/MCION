function [T,I,Y]=perfusionResponseP2XInact2noallo(y0,ton,toff,Ttot)
	ode=modelODEP2XInact2noallo(ton,toff);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:34));
	I=getTotalCurrentP2XInact2noallo(Y);
end