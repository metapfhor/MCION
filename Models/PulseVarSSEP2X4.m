function error = PulseVarSSEP2X4(ton,toff,Ttot,T,m,v,model)
	global err V
	V=-60*10^-3;
	
	[Tpred,Ipred]=PulseFuncCallerSSEP2X4(ton,toff,Ttot,model);

	j=1;
	err=0;
	
	Npred=length(Tpred);
	for i=1:length(T)
		while(j<Npred&&abs(Tpred(j+1)-T(i))<=abs(Tpred(j)-T(i)))
			j=j+1;
		end
			err=err+(abs(m(i)-Ipred(j))^2)/(2*v(i)*v(i));
    end
    error=err;
end