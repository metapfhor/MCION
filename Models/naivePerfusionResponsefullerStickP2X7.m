function [T,I,Y]=naivePerfusionResponsefullerStickP2X7(ton,toff,Ttot)
	ode=modelODEfullerStickP2X7(ton,toff);
	naive=zeros(13,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:13));
	I=getTotalCurrentfullerStickP2X7(Y);
end