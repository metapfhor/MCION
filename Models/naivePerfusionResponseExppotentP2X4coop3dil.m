function [Tout,Isoln,Ysoln] = naivePerfusionResponseExppotentP2X4coop3dil(ton,toff,Ttot,T)
global ATP A p0 Tsoln I Y imin imax t0;

	%#codgen;
	if max(T)<Ttot
		dt=T(2)-T(1);
		Tsoln=[T(1:end-1);(T(end):dt:Ttot).'];
	else
		Tsoln=T(T<=Ttot);
	end
	Nt=length(Tsoln);
	Tout=zeros(Nt,1);
	I=zeros(Nt,1);
	Isoln=zeros(Nt,1);
	Y=zeros(Nt,37);
	Ysoln=zeros(Nt,37);
	p0=zeros(1,37);
	p0(1)=1;
	indBef=T<ton(1);
	Y(indBef,:)=repmat(p0,sum(indBef),1);
	ton=[ton,Ttot];
	
	for i=1:length(ton)-1
		A=ATP;
		ind=find(T>ton(i)&T<=toff(i));
		imin=ind(1);
		imax=ind(end);
		t0=ton(i);
		linearODESolvepotentP2X4coop3dil();
		A=0;
		ind=find(T>toff&T<=ton(i+1));
		if length(ind)~=0
			imin=ind(1);
			imax=ind(end);
			t0=toff(i);
			linearODESolvepotentP2X4coop3dil();
		end
	end

	Tout=Tsoln;
	Isoln=I;
	Ysoln=Y;
end