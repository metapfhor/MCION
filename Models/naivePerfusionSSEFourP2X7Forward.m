function err = naivePerfusionSSEFourP2X7Forward(ton,toff,Ttot,amp,T,I)
	%#codgen;
	V=-60*10^-3;
	
	[Tpred,Ipred]=naivePerfusionResponseFourP2X7Forward(ton,toff,Ttot,amp);

	j=1;
	err=0;
	for i=1:length(Tpred)
		while(T(j)<Tpred(i))
			j=j+1;
		end
			err=err+abs(I(j)-Ipred(i))^2;
	end
end