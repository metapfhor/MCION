function err = naivePerfusionSSEIntegratorP2X4Stack3sub(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveP2X4Stack3sub();
	V=-60*10^-3;
	
	err=errorIntegratorP2X4Stack3sub(ton,toff,Ttot,amp,naive,T,I,V);

end