function [T,I,Y]=naivePerfusionResponsehillP2X7(ton,toff,Ttot)
	ode=modelODEhillP2X7(ton,toff);
	naive=zeros(12,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrenthillP2X7(Y);
end