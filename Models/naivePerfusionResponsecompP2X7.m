function [T,I,Y]=naivePerfusionResponsecompP2X7(ton,toff,Ttot)
	ode=modelODEcompP2X7(ton,toff);
	naive=zeros(12,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentcompP2X7(Y);
end