function err = naivePerfusionSSEfullerP2X7(ton,toff,Ttot,T,I)
	%#codgen;
	V=-60*10^-3;
	
	[Tpred,Ipred]=naivePerfusionResponsefullerP2X7(ton,toff,Ttot);

	j=1;
	err=0;
	
	Npred=length(Tpred);
	for i=1:length(T)
        if I(i)==0
            norm=1;
        else
            norm1=I(i);
        end
		while(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))
			j=j+1;
		end
			err=err+abs((I(i)-Ipred(j))/norm)^2;
	end
end