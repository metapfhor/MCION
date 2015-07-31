function [Tout,Isoln,Ysoln] = naivePerfusionResponseProlP2X4(ton,toff,Ttot,T)
global A J p0 err IVMon IVMoff I Y imin imax t0 Acell Tsoln;
	%This is the function which the sum of squared errors for the Pulse
	%protocol is calculated. The globals are declared above so they can be
	%used in this function.
    %The variable p0 is initialized here.
	p0=zeros(1,9);
	p0(1)=1;
    %The matrix ton contains the elements ton and Ttot. MAY WANT TO CHECK
    %THIS.
	ton=[ton,Ttot];
    %A0 is made equal to the concentration of ATP that is applied and
    %declared in the globals of the experimental array. The same thing
    %applies to J0, which corresponds to the concentration of IVM set in
    %the experimental structure.
    A0=A;
    J0=J;        
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
	Y=zeros(Nt,9);
	Ysoln=zeros(Nt,9);
	p0=zeros(1,9);
	p0(1)=1;
	indBef=T<ton(1);
	Y(indBef,:)=repmat(p0,sum(indBef),1);
%     
% 
%     
%     
%     ind=find(ton<IVMon);
%     ion=ind(end);
%     ind=find(ton<IVMoff & ton<Ttot);
%     ioff=ind(end);
%     
%     for i=1:ion-1
%     	indOn=find(T>ton(i)&T<=toff(i));
% 		indOff=find(T>toff(i)&T<=ton(i+1));
%         
% 		A=A0;
%         t0=ton(i);
%         imin=indOn(1);
%         imax=indOn(end);
% 		linearODESolveP2X4();
%         
% 		A=0;
%         t0=toff(i);
%         imin=indOff(1);
%         imax=indOff(end);
% 		linearODESolveP2X4();
%         
%     end
%     
%         indOn=find(T>ton(ion)&T<=toff(ion));
% 		indOff=find(T>toff(ion)&T<=IVMon);
%         
% 		A=A0;
%         t0=ton(ion);
%         imin=indOn(1);
%         imax=indOn(end);
% 		linearODESolveP2X4();
%         
% 		A=0;
%         t0=toff(ion);
%         imin=indOff(1);
%         imax=indOff(end);
% 		linearODESolveP2X4();
%         

if length(ton)>2
        J=J0;
            
        indPre=find(T>IVMon&T<=ton(1));
		indOn=find(T>ton(1)&T<=toff(1));
        indOff=find(T>toff(1)&T<=ton(2));
        
        A=0;
        t0=IVMon;
        imin=indPre(1);
        imax=indPre(end);
		linearODESolveP2X4();
        
       	A=A0;
        t0=ton(1);
        imin=indOn(1);
        imax=indOn(end);
		linearODESolveP2X4();
        
		A=0;
        t0=toff(1);
        imin=indOff(1);
        imax=indOff(end);
		linearODESolveP2X4();
        
        indOn2=find(T>ton(2)&T<=toff(2));
        indOff2=find(T>toff(2)&T<=IVMoff);
        
        A=A0;
        t0=ton(2);
        imin=indOn2(1);
        imax=indOn2(end);
        linearODESolveP2X4();
        
        A=0;
        t0=toff(2);
        imin=indOff2(1);
        imax=indOff2(end);
		linearODESolveP2X4();
else
    
        J=J0;
            
        indPre=find(T>IVMon&T<=ton(1));
		indOn=find(T>ton(1)&T<=toff(1));
%         indOff=find(T>toff(1)&T<=Ttot);
        
        A=0;
        t0=IVMon;
        imin=indPre(1);
        imax=indPre(end);
		linearODESolveP2X4();
        
       	A=A0;
        t0=ton(1);
        imin=indOn(1);
        imax=indOn(end);
		linearODESolveP2X4();
        
% 		A=0;
%         t0=toff(1);
%         imin=indOff(1);
%         imax=indOff(end);
% 		linearODESolveP2X4();
%         
end
%     
% 	for i=ion+2:ioff-1
% 		indOn=find(T>ton(i)&T<=toff(i));
% 		indOff=find(T>toff(i)&T<=ton(i+1));
%         
%         A=A0;
%         t0=ton(i);
%         imin=indOn(1);
%         imax=indOn(end);
% 		linearODESolveP2X4();
%         
% 		A=0;
%         t0=toff(i);
%         imin=indOff(1);
%         imax=indOff(end);
% 		linearODESolveP2X4();
%         
%     end
%     
%     if (ioff>length(toff))
%         Tout=Tsoln;
%         Isoln=I;
%         Ysoln=Y;
%         return;
%     end
%     
%         indOn=find(T>ton(ioff)&T<=toff(ioff));
% 		indOff=find(T>toff(ioff)&T<=IVMoff);
%         
%         A=A0;
%         t0=ton(ioff);
%         imin=indOn(1);
%         imax=indOn(end);
% 		linearODESolveP2X4();
%         
% 		A=0;
%         t0=toff(ioff);
%         
%         %The commented out block that isn't tabbed is the original code.
%         %imin=indOff(1); %I'm not sure why this gives errors, but I need to check.
% %         imin=1;
% %         imax=6;
%         %imax=indOff(end);
% 		%linearODESolveP2X4();
%         
%         if isempty(indOff)==0 %Need to make an else statement for when the array is empty.
%             imin=indOff(1);
%             imax=indOff(end);
%         end
%         linearODESolveP2X4()
%         
%         
%         J=0;
%         if length(toff)<=ioff
%         	Tout=Tsoln;
%             Isoln=I;
%             Ysoln=Y;
%             return
%         end
%             
%         indPre=find(T>IVMoff&T<=ton(ioff+1));
% 		indOn=find(T>ton(ioff+1)&T<=toff(ioff+1));
%         indOff=find(T>toff(ioff+1)&T<=ton(ioff+2));
%                 
%         t0=IVMoff;
%         imin=indPre(1);
%         imax=indPre(end);
% 		linearODESolveP2X4();
%         
%                
%         A=A0;
%         t0=ton(ioff+1);
%         imin=indOn(1);
%         imax=indOn(end);
% 		linearODESolveP2X4();
%         
% 		A=0;
%         t0=toff(ioff+1);
%         imin=indOff(1);
%         imax=indOff(end);
% 		linearODESolveP2X4();
%         
%         
%     for i=ioff+1:length(ton)-1
%         if i<12 %The if statement was just added to fix the error.
%         indOn=find(T>ton(i)&T<=toff(i));
%         indOff=find(T>toff(i)&T<=ton(i+1));
% 
%         
%         A=A0;
%         t0=ton(i);
%         imin=indOn(1);
%         imax=indOn(end);
% 		linearODESolveP2X4();
%         
% 		A=0;
%         t0=toff(i);
%         imin=indOff(1);
%         imax=indOff(end);
% 		linearODESolveP2X4();
%         end
%     end
% 

	Tout=Tsoln;
	Isoln=I;
	Ysoln=Y;
end