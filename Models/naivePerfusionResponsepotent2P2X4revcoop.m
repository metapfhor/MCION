function [T,I,Y]=naivePerfusionResponsepotent2P2X4revcoop(ton,toff,Ttot)
	ode=modelODEpotent2P2X4revcoop(ton,toff);
	naive=zeros(21,1);
	naive(1)=1;
	setAuxiliarypotent2P2X4revcoop(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:21));
	I=getTotalCurrentpotent2P2X4revcoop(Y);
end