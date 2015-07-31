function [T,I,Y]=naivePerfusionResponseP2X4freeDe(ton,toff,Ttot)
	ode=modelODEP2X4freeDe(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliaryP2X4freeDe(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentP2X4freeDe(Y);
end