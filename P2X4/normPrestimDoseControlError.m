function h = normPrestimDoseError(model)
global Icontrol I10 I30

%normalize wrt the final point in the control
I0=Icontrol/Icontrol(end);


    function err=sse(x)
        
        I0p=ATPDoseResponse(x,model);
        %normalize wrt the final point in the control simulation

        I0p=I0p/I0p(end);
    
        %sse with rescaling to make err comparable to currents
        err=Icontrol(end)^2*(sum((I0p-I0).^2));
        
    end
    h=@sse;
end

