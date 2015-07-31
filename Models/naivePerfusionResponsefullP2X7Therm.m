function [T,I,Y]=naivePerfusionResponsefullP2X7Therm(ton,toff,Ttot)
	ode=modelODEfullP2X7Therm(ton,toff);
	naive=zeros(12,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:12));
	I=getTotalCurrentfullP2X7Therm(Y);
end