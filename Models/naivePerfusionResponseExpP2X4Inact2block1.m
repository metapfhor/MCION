function [Tout,Isoln,Ysoln] = naivePerfusionResponseExpP2X4Inact2block1(ton,toff,Ttot,T)
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
	Y=zeros(Nt,10);
	Ysoln=zeros(Nt,10);
	p0=zeros(1,10);
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
		linearODESolveP2X4Inact2block1();
		A=0;
		ind=find(T>toff&T<=ton(i+1));
		if length(ind)~=0
			imin=ind(1);
			imax=ind(end);
			t0=toff(i);
			linearODESolveP2X4Inact2block1();
		end
	end

	Tout=Tsoln;
	Isoln=I;
	Ysoln=Y;
end