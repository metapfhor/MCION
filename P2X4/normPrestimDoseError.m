function h = normPrestimDoseError(model,submodel)
global Icontrol I10 I30 glblStruct P2X4stacksub P2X4sub

v0=[0.1124,0.1124,0.1124,0.2308,0.2308,0.3195,0.2426].'*1000;
v1=[0.0418,0.0418,0.2604,0.5326,0.5799, 0.3137].'*1000;
v3=[0.1065,0.0950,0.2723,0.3373,0.2722,0.2308].'*1000;
%normalize wrt the final point in the control
I0=Icontrol/Icontrol(end);
v0=v0/Icontrol(end);
I1=I10/Icontrol(end);
v1=v1/Icontrol(end);
I3=I30/Icontrol(end);
v3=v3/Icontrol(end);

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

        if nargin==1
            I0p=ATPDoseResponse(x,model);
        else
            I0p=ATPDoseResponse(x,submodel)
        end
        %normalize wrt the final point in the control simulation
        I1p=ATPDoseResponse10(x,model)/I0p(end);
        I3p=ATPDoseResponse30(x,model)/I0p(end);
        I0p=I0p/I0p(end);
    
        %sse with rescaling to make err comparable to currents
%         err=(sum(((I0p-I0).^2)./(2*v0.^2))+sum(((I1p-I1).^2)./(2*v1.^2))+sum(((I3p-I3).^2)./(2*v3.^2)));
        err=Icontrol(end)^2*(sum((I0p-I0).^2)+sum((I1p-I1).^2)+sum((I3p-I3).^2));
        
    end
    h=@sse;
end

