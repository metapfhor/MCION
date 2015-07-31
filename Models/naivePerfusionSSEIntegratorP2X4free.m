function err = naivePerfusionSSEIntegratorP2X4free(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveP2X4free();
	V=-60*10^-3;
	
	err=errorIntegratorP2X4free(ton,toff,Ttot,amp,naive,T,I,V);

end