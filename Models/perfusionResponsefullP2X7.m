function [T,I,Y]=perfusionResponsefullP2X7(ton,toff,Ttot)
	ode=modelODEfullP2X7(ton,toff);
	naive=zeros(12,1);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:12));
	I=getTotalCurrentfullP2X7(Y);
end