function h = normPrestimDoseError(model,submodel)
global Icontrol I10 I30 globalStruct P2X4stacksub P2X4sub

v0=[0.1124,0.1124,0.1124,0.2308,0.2308,0.3195,0.2426].'*1000;
v1=[0.0418,0.0418,0.2604,0.5326,0.5799, 0.3137].'*1000;
v3=[0.1065,0.0950,0.2723,0.3373,0.2722,0.2308].'*1000;
%normalize wrt the final point in the control
I0=Icontrol;
v0=v0;
I1=I10;
v1=v1;
I3=I30;
v3=v3;

g=globalStruct;
f={@ATPDoseResponse,@ATPDoseResponse10,@ATPDoseResponse30};

if nargin==1
    m={model,model,model};
else
    m={submodel,model,model};
end
I=zeros(7,3);
    function err=sse(x)
        
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
%     tic
    parfor i=1:3
        switch i 
            case 1
                I(:,i)=globalSetFeval(g,f{i},x, m{i});
            case 2
                I(:,i)=[globalSetFeval(g,f{i},x,m{i});0];
            case 3
                I(:,i)=[globalSetFeval(g,f{i},x,m{i});0];
        end
    end
    
    %normalize wrt the final point in the control simulation
    I0p=I(:,1);
    I1p=I(1:6,2);
    I3p=I(1:6,3);
    
    mask=ones(size(I1p));
    mask(3:4)=0;
%     

%         toc;
        %sse with rescaling to make err comparable to currents
        err=(sum(3*((I0p-I0).^2)./(2*v0.^2))+sum((((I1p-I1).*mask).^2)./(2*v1.^2))+sum(((I3p-I3).^2)./(2*v3.^2)));
%          err=(sum((I0p-I0).^2)+sum((I1p-I1).^2)+sum((I3p-I3).^2));
%         err=Icontrol(end)^2*(sum((I0p-I0).^2)+sum((I1p-I1).^2)+sum((I3p-I3).^2));
        
    end
    h=@sse;
end

