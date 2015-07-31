function error = naivePerfusionSSEExpcompP2X7(ton,toff,Ttot,T,I)
global ATP A p0 err;
	%#codgen;
	p0=zeros(1,12);
	p0(1)=1;
	ton=[ton,Ttot];
	err=0;
	for i=1:length(ton)-1
		indOn=T>ton(i)&T<=toff(i);
		indOff=T>toff(i)&T<=ton(i+1);
		A=ATP;
		linearODESSEcompP2X7(T(indOn)-ton(i),I(indOn));
		A=0;
		linearODESSEcompP2X7(T(indOff)-toff(i),I(indOff));
	end
	error=err;
end