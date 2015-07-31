function [T,I,Y]=naivePerfusionResponseP2X4(ton,toff,Ttot)
	ode=modelODEP2X4(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0, Ttot],naive);
	I=getTotalCurrentP2X4(Y);
end