function err = naivePerfusionSSEIntegratorcalP2X7(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,24);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorcalP2X7(ton,toff,Ttot,amp,naive,T,I,V);

end