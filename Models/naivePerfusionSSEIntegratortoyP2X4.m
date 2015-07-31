function err = naivePerfusionSSEIntegratortoyP2X4(ton,toff,Ttot,amp,dt,T,I)
	%#codgen;
	naive=zeros(1,9);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratortoyP2X4(ton,toff,Ttot,amp,dt,naive,T,I,V);

end