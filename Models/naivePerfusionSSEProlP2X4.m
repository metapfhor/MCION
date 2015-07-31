function error = naivePerfusionSSEProlP2X4(ton,toff,Ttot,T,I)
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
    
        J=J0;
            
        indPre=T>IVMon&T<=ton(1);
		indOn=T>ton(1)&T<=toff(1);
        indOff=T>toff(1)&T<=ton(2);
        
        A=0;
        linearODESSEP2X4(T(indPre)-IVMon,I(indPre));
        
		A=A0;
		linearODESSEP2X4(T(indOn)-ton(1),I(indOn));
        
		A=0;
		linearODESSEP2X4(T(indOff)-toff(1),I(indOff));
        
        indOn2=T>ton(2)&T<=toff(2);
        indOff2=T>toff(2)&T<=IVMoff;
        
        A=A0;
        
        linearODESSEP2X4(T(indOn2)-ton(2),I(indOn2));
        
        A=0;
        
        linearODESSEP2X4(T(indOff2)-toff(2),I(indOff2));
   
	error=err;
end