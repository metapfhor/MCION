function [T,I,Y]=naivePerfusionResponsefactorP2X4coopsub(ton,toff,Ttot)
	ode=modelODEfactorP2X4coopsub(ton,toff);
	naive=zeros(9,1);
	naive(1)=1;
	setAuxiliaryfactorP2X4coopsub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:9));
	I=getTotalCurrentfactorP2X4coopsub(Y);
end