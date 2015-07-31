function err = naivePerfusionSSEIntegratoranmarP2X4inact2(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveanmarP2X4inact2();
	V=-60*10^-3;
	
	err=errorIntegratoranmarP2X4inact2(ton,toff,Ttot,amp,naive,T,I,V);

end