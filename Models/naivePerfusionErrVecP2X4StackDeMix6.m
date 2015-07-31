function err = naivePerfusionErrVecP2X4StackDeMix6(ton,toff,Ttot,T,I)
	%#codgen;
	V=-60*10^-3;
	
	[Tpred,Ipred]=naivePerfusionResponseP2X4StackDeMix6(ton,toff,Ttot);

	Npred=length(Tpred);
	err=zeros(size(T));
	if ndims(T)==1
			j=1;
			for i=1:length(T)
				while(j<Npred&&abs(Tpred(j+1)-T(i))<abs(Tpred(j)-T(i)))
				j=j+1;
			end
		err(i)=I(i)-Ipred(j);
		end
	else
		k=1;
		for i=1:size(T,2)
			for j=1:size(T,1)
				while(k<Npred&&abs(Tpred(k+1)-T(j,i))<abs(Tpred(k)-T(j,i)))
				k=k+1;
				end
			err(i)=I(j,i)-Ipred(k);
		end
	end
	err=err/size(T,2);
	end
end