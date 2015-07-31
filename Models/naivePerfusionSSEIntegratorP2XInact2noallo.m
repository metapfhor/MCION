function err = naivePerfusionSSEIntegratorP2XInact2noallo(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveP2XInact2noallo();
	V=-60*10^-3;
	
	err=errorIntegratorP2XInact2noallo(ton,toff,Ttot,amp,naive,T,I,V);

end