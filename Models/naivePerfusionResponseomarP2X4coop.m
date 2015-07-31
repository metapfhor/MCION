function [T,I,Y]=naivePerfusionResponseomarP2X4coop(ton,toff,Ttot)
	ode=modelODEomarP2X4coop(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliaryomarP2X4coop(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentomarP2X4coop(Y);
end