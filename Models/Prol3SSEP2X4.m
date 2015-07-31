function error = Prol3SSEP2X4(ton,toff,Ttot,T,I,model)
	global err V
	V=-60*10^-3;
	
	[Tpred,Ipred]=Prol3FuncCallerP2X4(ton,toff,Ttot,model);

	j=1;
	err=0;
	
	Npred=length(Tpred);
	for i=1:length(T)%/4
		while(j<Npred&&abs(Tpred(j+1)-T(i))<=abs(Tpred(j)-T(i)))
			j=j+1;
		end
			err=err+abs(I(i)-Ipred(j))^2;
    end
    %Omar had this weird sectioning of time....
%     for i=686:length(T)
% 		while(j<Npred&&abs(Tpred(j+1)-T(i))<=abs(Tpred(j)-T(i)))
% 			j=j+1;
% 		end
% 			err=err+4*abs(I(i)-Ipred(j))^2;
%     end
    error=err;
end