function err = naivePerfusionSSEIntegratorP2X4Inact2factor(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveP2X4Inact2factor();
	V=-60*10^-3;
	
	err=errorIntegratorP2X4Inact2factor(ton,toff,Ttot,amp,naive,T,I,V);

end