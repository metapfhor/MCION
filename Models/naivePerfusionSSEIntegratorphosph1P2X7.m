function err = naivePerfusionSSEIntegratorphosph1P2X7(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,12);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorphosph1P2X7(ton,toff,Ttot,amp,naive,T,I,V);

end