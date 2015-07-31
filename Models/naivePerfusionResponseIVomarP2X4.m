function [T,I,Y]=naivePerfusionResponseIVomarP2X4(ton,toff,Ttot)
	ode=modelODEomarP2X4(ton,toff);
	naive=getNaiveomarP2X4();
	setAuxiliaryomarP2X4(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21,'MaxStep',0.01));
	I=getTotalCurrentomarP2X4(Y);
end