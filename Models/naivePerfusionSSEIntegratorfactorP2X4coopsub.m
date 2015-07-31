function err = naivePerfusionSSEIntegratorfactorP2X4coopsub(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,9);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorfactorP2X4coopsub(ton,toff,Ttot,amp,naive,T,I,V);

end