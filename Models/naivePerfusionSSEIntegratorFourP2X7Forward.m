function err = naivePerfusionSSEIntegratorFourP2X7Forward(ton,toff,Ttot,amp,dt,T,I)
	%#codgen;
	naive=zeros(1,4);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorFourP2X7Forward(ton,toff,Ttot,amp,dt,naive,T,I,V);

end