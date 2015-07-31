function [T,I,Y]=naivePerfusionResponseP2XInact2noallo(ton,toff,Ttot)
	ode=modelODEP2XInact2noallo(ton,toff);
	naive=getNaiveP2XInact2noallo();
	setAuxiliaryP2XInact2noallo(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:34));
	I=getTotalCurrentP2XInact2noallo(Y);
end