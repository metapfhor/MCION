function h = normPrestimDoseError(model)
global Icontrol I10 I30 glblStruct P2X4sub

%normalize wrt the final point in the control
I0=Icontrol/Icontrol(end);
I1=I10/Icontrol(end);
I3=I30/Icontrol(end);

g=glblStruct;

    function err=sse(x)
        f={@ATPDoseResponse,@ATPDoseResponse10,@ATPDoseResopnse30};
%         parfor i=1:3
%          
%             switch i 
%                 case 1
%                     I0p=globalSetFeval(g,@ATPDoseResponse,x,model);
%                 case 2
%                     I1p=globalSetFeval(g,@ATPDoseResponse,x,model);
%                 case 3
%                     I3p=globalSetFeval(g,@ATPDoseResponse,x,model);
%             end
%                     
%             
%         end

        
        I0p=ATPDoseResponse(x,P2X4sub);
        %normalize wrt the final point in the control simulation
        I1p=ATPDoseResponse10(x,model)/I0p(end);
        I3p=ATPDoseResponse30(x,model)/I0p(end);
        I0p=I0p/I0p(end);
    
        %sse with rescaling to make err comparable to currents
        err=Icontrol(end)*[I0p-I0;I1p-I1;I3p-I3];
    end
    h=@sse;
end

