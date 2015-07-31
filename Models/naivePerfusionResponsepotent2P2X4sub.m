function [T,I,Y]=naivePerfusionResponsepotent2P2X4sub(ton,toff,Ttot)
	ode=modelODEpotent2P2X4sub(ton,toff);
	naive=zeros(9,1);
	naive(1)=1;
	setAuxiliarypotent2P2X4sub(naive);
	[T,Y]=ode15s(ode,[0 Ttot],naive,odeset('NonNegative',1:9));
	I=getTotalCurrentpotent2P2X4sub(Y);
end