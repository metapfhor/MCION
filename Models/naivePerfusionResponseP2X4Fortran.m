function [T,I,Y]=naivePerfusionResponseP2X4Fortran(ton,toff,Ttot)
	ode=modelODEP2X4Fortran(ton,toff);
	naive=zeros(17,1);
	naive(1)=1;
	[T,Y]=ode15s(ode,[0 Ttot],naive);
	I=getTotalCurrentP2X4Fortran(Y);
end