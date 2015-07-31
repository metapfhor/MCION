function err = naivePerfusionSSEIntegratorfullerStickP2X7(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,13);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorfullerStickP2X7(ton,toff,Ttot,amp,naive,T,I,V);

end