function [T,I,Y]=naivePerfusionResponseomarP2X4cooppotent1(ton,toff,Ttot)
	ode=modelODEomarP2X4cooppotent1(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliaryomarP2X4cooppotent1(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentomarP2X4cooppotent1(Y);
end