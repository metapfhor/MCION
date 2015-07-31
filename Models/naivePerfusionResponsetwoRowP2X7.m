function [T,I,Y]=naivePerfusionResponsetwoRowP2X7(ton,toff,Ttot,amp)
	ode=modelODEtwoRowP2X7(ton,toff,amp);
	naive=zeros(8,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrenttwoRowP2X7(Y,-60*10^-3);
end