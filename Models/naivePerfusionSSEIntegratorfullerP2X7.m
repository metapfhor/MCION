function err = naivePerfusionSSEIntegratorfullerP2X7(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,16);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorfullerP2X7(ton,toff,Ttot,amp,naive,T,I,V);

end