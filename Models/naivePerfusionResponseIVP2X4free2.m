function [T,I,Y]=naivePerfusionResponseIVP2X4free2(ton,toff,Ttot)
	ode=modelODEP2X4free2(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliaryP2X4free2(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21,'MaxStep',0.01));
	I=getTotalCurrentP2X4free2(Y);
end