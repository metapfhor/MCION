function err = naivePerfusionVarSSEfactorP2X4coopsub(ton,toff,Ttot,T,m,v)
	%#codgen;
	V=-60*10^-3;
	
	[Tpred,Ipred]=naivePerfusionResponsefactorP2X4coopsub(ton,toff,Ttot);

	v(v==0)=1;
	j=1;
	err=0;
	
	T=T(T<Ttot);
	Npred=length(Tpred);
	for i=1:length(T)
		while(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))
			j=j+1;
		end
			err=err+(abs((m(i)-Ipred(j)))^2)/(2*v(i));
	end
end