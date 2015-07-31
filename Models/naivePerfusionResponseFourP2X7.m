function [T,I,Y]=naivePerfusionResponseFourP2X7(ton,toff,Ttot,amp)
	ode=modelODEFourP2X7(ton,toff,amp);
	naive=zeros(4,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentFourP2X7(Y,-60*10^-3);
end