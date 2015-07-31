function err = naivePerfusionSSEIntegratorP2X4StackDeMix5alt(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=getNaiveP2X4StackDeMix5alt();
	V=-60*10^-3;
	
	err=errorIntegratorP2X4StackDeMix5alt(ton,toff,Ttot,amp,naive,T,I,V);

end