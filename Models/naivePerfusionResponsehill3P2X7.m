function [T,I,Y]=naivePerfusionResponsehill3P2X7(ton,toff,Ttot)
	ode=modelODEhill3P2X7(ton,toff);
	naive=zeros(12,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrenthill3P2X7(Y);
end