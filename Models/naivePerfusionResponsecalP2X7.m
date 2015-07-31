function [T,I,Y]=naivePerfusionResponsecalP2X7(ton,toff,Ttot)
	ode=modelODEcalP2X7(ton,toff);
	naive=zeros(24,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentcalP2X7(Y);
end