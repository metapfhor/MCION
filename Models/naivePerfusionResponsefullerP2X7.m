function [T,I,Y]=naivePerfusionResponsefullerP2X7(ton,toff,Ttot)
	ode=modelODEfullerP2X7(ton,toff);
	naive=zeros(16,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentfullerP2X7(Y);
end