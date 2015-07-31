function [T,I,Y]=naivePerfusionResponseP2X4Stack2sub(ton,toff,Ttot)
	ode=modelODEP2X4Stack2sub(ton,toff);
	naive=zeros(9,1);
	naive(1)=1;
	setAuxiliaryP2X4Stack2sub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:9));
	I=getTotalCurrentP2X4Stack2sub(Y);
end