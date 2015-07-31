function err = normPrestimDoseErrorpotentP2X4pool(x)
global Icontrol I10 I30 globalStruct potentP2X4pool P2X4sub

%normalize wrt the final point in the control


I0=Icontrol/Icontrol(end);
I1=I10/Icontrol(end);
I3=I30/Icontrol(end);

g=globalStruct;
I=zeros(7,3);
ps=P2X4sub;
p=potentP2X4pool;
    parfor i=1:3
        switch i 
            case 1
                I(:,i)=globalSetFeval(g,@ATPDoseResponse,x, ps);
            case 2
                I(:,i)=[globalSetFeval(g,@ATPDoseResponse10,x,p);0];
            case 3
                I(:,i)=[globalSetFeval(g,@ATPDoseResponse30,x,p);0];
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

