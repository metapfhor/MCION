function error = naivePerfusionSSEExpP2X4(ton,toff,Ttot,T,I)
global A p0 err V;
	%#codgen;
	p0=zeros(1,17);
	p0(1)=1;
	ton=[ton,Ttot];
	err=0;
    A0=A;
    V=-60e-3;
	for i=1:length(ton)-1
		indOn=T>ton(i)&T<=toff(i);
		indOff=T>toff(i)&T<=ton(i+1);
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(i),I(indOn));
		A=0;
		linearODESSEP2X4(T(indOff)-toff(i),I(indOff));
	end
	error=err;
end