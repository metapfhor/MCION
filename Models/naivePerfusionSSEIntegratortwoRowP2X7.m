function err = naivePerfusionSSEIntegratortwoRowP2X7(ton,toff,Ttot,amp,dt,T,I)
	%#codgen;
	naive=zeros(1,8);
	naive(1)=1;
	V=-60*10^-3;
	
	err=errorIntegratortwoRowP2X7(ton,toff,Ttot,amp,dt,naive,T,I,V);

end