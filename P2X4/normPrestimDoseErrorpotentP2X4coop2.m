function err = normPrestimDoseErrorpotentP2X4coop2(x)
global Icontrol I10 I30 glblStruct potentP2X4coop2

%normalize wrt the final point in the control


I0=Icontrol/Icontrol(end);
I1=I10/Icontrol(end);
I3=I30/Icontrol(end);

g=glblStruct;
I=zeros(7,3);
    parfor i=1:3
        switch i 
            case 1
                I(:,i)=globalSetFeval(g,@ATPDoseResponse,x, potentP2X4coop2);
            case 2
                I(:,i)=[globalSetFeval(g,@ATPDoseResponse10,x,potentP2X4coop2);0];
            case 3
                I(:,i)=[globalSetFeval(g,@ATPDoseResponse30,x,potentP2X4coop2);0];
        end
    end
        
        
        %normalize wrt the final point in the control simulation
        I(:,2)=I(:,2)/I(7,1);
        I(:,3)=I(:,3)/I(7,1);
        I(:,1)=I(:,1)/I(7,1);
%     
        %sse with rescaling to make err comparable to currents
        err=Icontrol(end)^2*(sum((I(:,1)-I0).^2)+sum((I(1:6,2)-I1).^2)+sum((I(1:6,3)-I3).^2));
        

end

