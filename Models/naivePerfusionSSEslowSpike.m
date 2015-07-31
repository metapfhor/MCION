function err = naivePerfusionSSEslowSpike(ton,toff,Ttot,T,I)
	%#codgen;
	V=-60*10^-3;
	
	[Tpred,Ipred]=naivePerfusionResponseslowSpike(ton,toff,Ttot);

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