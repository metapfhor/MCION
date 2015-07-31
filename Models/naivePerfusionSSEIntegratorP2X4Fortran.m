function err = naivePerfusionSSEIntegratorP2X4Fortran(ton,toff,Ttot,amp,T,I)
	%#codgen;
	naive=zeros(1,17);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratorP2X4Fortran(ton,toff,Ttot,amp,naive,T,I,V);

end