function err = naivePerfusionSSEIntegratoranmarP2X4tri(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveanmarP2X4tri();
	V=-60*10^-3;
	
	err=errorIntegratoranmarP2X4tri(ton,toff,Ttot,amp,naive,T,I,V);

end