function [T,I,Y]=naivePerfusionResponseslowSpike(ton,toff,Ttot)
	ode=modelODEslowSpike(ton,toff);
	naive=zeros(5,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentslowSpike(Y);
end