function err = naivePerfusionSSEIntegratorpotent2P2X4indep(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,21);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorpotent2P2X4indep(ton,toff,Ttot,amp,naive,T,I,V);

end