function error = PulseVarSSEP2X4(ton,toff,Ttot,T,m,v,model)
	global err V
	V=-60*10^-3;
	
	[Tpred,Ipred]=PulseFuncCallerSSEP2X4(ton,toff,Ttot,model);

    ton=[ton(2:end);Ttot];%trick for pulse detection


	j=1;%output time counter
    k=1;%pulse counter
	err=0;
	
	Npred=length(Tpred);
	for i=1:length(T)
        Tcurr=T(i);
		while(j<Npred&&abs(Tpred(j+1)-Tcurr)<=abs(Tpred(j)-Tcurr))
			j=j+1;
        end
            if sum(Tcurr>toff&Tcurr<ton)==1
                err=err+(abs(m(i)-Ipred(j))^2)/(2*v(i));
            end
    end
    error=err;
end