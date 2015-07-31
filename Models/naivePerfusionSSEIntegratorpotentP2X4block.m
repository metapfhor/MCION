function err = naivePerfusionSSEIntegratorpotentP2X4block(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,53);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorpotentP2X4block(ton,toff,Ttot,amp,naive,T,I,V);

end