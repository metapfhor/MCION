function err = PulseSSEP2X4(ton,toff,Ttot,T,I,model)
	global V
	V=-60*10^-3;
	
	[Tpred,Ipred]=PulseFuncCallerSSEP2X4(ton,toff,Ttot,model);

	j=1;
	err=zeros(size(T));
	
	Npred=length(Tpred);
	for i=1:length(T)
		while(j<Npred&&abs(Tpred(j+1)-T(i))<=abs(Tpred(j)-T(i)))
			j=j+1;
		end
			err(i)=I(i)-Ipred(j);
    end
end