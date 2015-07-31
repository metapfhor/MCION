function err = naivePerfusionSSEIntegratorslowSpike(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,5);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorslowSpike(ton,toff,Ttot,amp,naive,T,I,V);

end