function err = naivePerfusionSSEIntegratorThreeP2X7ASym(ton,toff,Ttot,amp,dt,T,I)
	%#codgen;
	naive=zeros(1,1);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorThreeP2X7ASym(ton,toff,Ttot,amp,dt,naive,T,I,V);

end