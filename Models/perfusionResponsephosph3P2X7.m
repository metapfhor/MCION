function [T,I,Y]=perfusionResponsephosph3P2X7(ton,toff,Ttot)
	ode=modelODEphosph3P2X7(ton,toff);
	naive=zeros(20,1);
	[T,Y]=ode15s(ode,[0 Ttot],y0,odeset('NonNegative',1:20));
	I=getTotalCurrentphosph3P2X7(Y);
end