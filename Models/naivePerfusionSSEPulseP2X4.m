function error = naivePerfusionSSEPulseP2X4(ton,toff,Ttot,T,I)
global A J p0 err IVMon IVMoff Acell;
	%This is the function which the sum of squared errors for the Pulse
	%protocol is calculated. The globals are declared above so they can be
	%used in this function.
    %The variable p0 is initialized here.
	p0=zeros(1,9);
	p0(1)=1;
    %The matrix ton contains the elements ton and Ttot. MAY WANT TO CHECK
    %THIS.
	ton=[ton,Ttot];
    %The variable 'err' is initialized at 0.
	err=0;
    %A0 is made equal to the concentration of ATP that is applied and
    %declared in the globals of the experimental array. The same thing
    %applies to J0, which corresponds to the concentration of IVM.
    A0=A;
    J0=J;
    %First the concentration of IVM is made zero.
    J=0;
    
    ind=find(ton<IVMon);
    ion=ind(end);
    ind=find(ton<IVMoff);
    ioff=ind(end);
    
    for i=1:ion-1
    	indOn=T>ton(i)&T<=toff(i);
		indOff=T>toff(i)&T<=ton(i+1);
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(i),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(i),I(indOff));
    end
    
        indOn=T>ton(ion)&T<=toff(ion);
		indOff=T>toff(ion)&T<=IVMon;
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(ion),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(ion),I(indOff));
        
        J=J0;
            
        indPre=T>IVMon&T<=ton(ion+1);
		indOn=T>ton(ion+1)&T<=toff(ion+1);
        indOff=T>toff(ion+1)&T<=ton(ion+2);
        
        linearODESSEP2X4(T(indPre)-IVMon,I(indPre));
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(ion+1),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(ion+1),I(indOff));
        
        
    
	for i=ion+2:ioff-1
		indOn=T>ton(i)&T<=toff(i);
		indOff=T>toff(i)&T<=ton(i+1);
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(i),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(i),I(indOff));
    end
    if (ioff>length(toff))
        error=err;
        return;
    end
    
        indOn=T>ton(ioff)&T<=toff(ioff);
		indOff=T>toff(ioff)&T<=IVMoff;
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(ioff),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(ioff),I(indOff));
        
        J=0;
        
        if length(toff)<=ioff
            error=err;
            return
        end
        
        indPre=T>IVMoff&T<=ton(ioff+1);
		indOn=T>ton(ioff+1)&T<=toff(ioff+1);
        indOff=T>toff(ioff+1)&T<=ton(ioff+2);
        
        linearODESSEP2X4(T(indPre)-IVMoff,I(indPre));
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(ioff+1),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(ioff+1),I(indOff));
        
    for i=ioff+1:length(ton)-1
        indOn=T>ton(i)&T<=toff(i);
        indOff=T>toff(i)&T<=ton(i+1);

        A=A0;
        linearODESSEP2X4(T(indOn)-ton(i),I(indOn));

        A=0;
        linearODESSEP2X4(T(indOff)-toff(i),I(indOff));
    end
    
	error=err;
end