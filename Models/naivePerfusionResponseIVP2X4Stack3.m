function [T,I,Y]=naivePerfusionResponseIVP2X4Stack3(ton,toff,Ttot)
	ode=modelODEP2X4Stack3(ton,toff);
	naive=zeros(33,1);
	naive(1)=1;
	setAuxiliaryP2X4Stack3(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:33,'MaxStep',0.01));
	I=getTotalCurrentP2X4Stack3(Y);
end