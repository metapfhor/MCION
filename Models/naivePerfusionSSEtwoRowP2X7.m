function err = naivePerfusionSSEtwoRowP2X7(ton,toff,Ttot,amp,T,I)
	%#codgen;
	V=-60*10^-3;
	
	[Tpred,Ipred]=naivePerfusionResponsetwoRowP2X7(ton,toff,Ttot,amp);

	j=1;
	err=0;
	
	Npred=length(Tpred);
	for i=1:length(T)
		while(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))
			j=j+1;
		end
			err=err+abs(I(i)-Ipred(j))^2;
	end
end