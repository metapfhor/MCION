function [T,I,Y]=naivePerfusionResponsetoyP2X4(ton,toff,Ttot,amp)
	ode=modelODEtoyP2X4(ton,toff,amp);
	naive=zeros(9,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrenttoyP2X4(Y,-60*10^-3);
end