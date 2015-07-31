function [T,I,Y]=perfusionResponsephosph2P2X7(ton,toff,Ttot)
	ode=modelODEphosph2P2X7(ton,toff);
	naive=zeros(16,1);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:16));
	I=getTotalCurrentphosph2P2X7(Y);
end