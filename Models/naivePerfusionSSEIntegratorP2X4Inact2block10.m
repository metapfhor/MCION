function err = naivePerfusionSSEIntegratorP2X4Inact2block10(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveP2X4Inact2block10();
	V=-60*10^-3;
	
	err=errorIntegratorP2X4Inact2block10(ton,toff,Ttot,amp,naive,T,I,V);

end