function err = naivePerfusionSSEIntegratoromarP2X4(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveomarP2X4();
	V=-60*10^-3;
	
	err=errorIntegratoromarP2X4(ton,toff,Ttot,amp,naive,T,I,V);

end