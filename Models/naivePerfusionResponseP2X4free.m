function [T,I,Y]=naivePerfusionResponseP2X4free(ton,toff,Ttot)
	ode=modelODEP2X4free(ton,toff);
	naive=getNaiveP2X4free();
	setAuxiliaryP2X4free(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentP2X4free(Y);
end