function [T,I,Y]=perfusionResponsephosph1P2X7(ton,toff,Ttot)
	ode=modelODEphosph1P2X7(ton,toff);
	naive=zeros(12,1);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:12));
	I=getTotalCurrentphosph1P2X7(Y);
end