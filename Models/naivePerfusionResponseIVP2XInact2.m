function [T,I,Y]=naivePerfusionResponseIVP2XInact2(ton,toff,Ttot)
	ode=modelODEP2XInact2(ton,toff);
	naive=getNaiveP2XInact2();
	setAuxiliaryP2XInact2(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:34,'MaxStep',0.01));
	I=getTotalCurrentP2XInact2(Y);
end