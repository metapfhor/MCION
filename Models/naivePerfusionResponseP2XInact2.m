function [T,I,Y]=naivePerfusionResponseP2XInact2(ton,toff,Ttot)
	ode=modelODEP2XInact2(ton,toff);
	naive=getNaiveP2XInact2();
	setAuxiliaryP2XInact2(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:34));
	I=getTotalCurrentP2XInact2(Y);
end