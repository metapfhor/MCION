function err = naivePerfusionSSEIntegratorP2X4free2(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,21);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorP2X4free2(ton,toff,Ttot,amp,naive,T,I,V);

end