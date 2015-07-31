function [T,I,Y]=naivePerfusionResponsefactorP2X4del(ton,toff,Ttot)
	ode=modelODEfactorP2X4del(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliaryfactorP2X4del(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentfactorP2X4del(Y);
end