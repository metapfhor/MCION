function h = normPrestimDoseError(model,submodel)
global Icontrol I10 I30 globalStruct P2X4stacksub P2X4sub

v0=[0.1124,0.1124,0.1124,0.2308,0.2308,0.3195,0.2426].'*1000;
v0=sqrt(Icontrol*0.1);
v0(v0<5)=5;
v1=[0.0418,0.0418,0.2604,0.5326,0.5799, 0.3137].'*1000;
v3=[0.1065,0.0950,0.2723,0.3373,0.2722,0.2308].'*1000;
%normalize wrt the final point in the control
I0=Icontrol;
v0=v0;
I1=I10;
v1=v1;
I3=I30;
v3=v3;
A=[0.1,0.3,1,3,10,30,100].'*1e-6;
g=globalStruct;
f={@ATPDoseResponse,@ATPDoseResponse30};

if nargin==1
    m={model,model};
else
    m={submodel,model};
end
I=zeros(7,3);
    function F=sseFutures(x)
        
        F(1)=parfeval(@globalSetFeval,1,g,@ATPDoseResponse,x,m{1});
        F(2)=parfeval(@globalSetFeval,1,g,@ATPDoseResponse30,x,m{2});
     
    end

    function err=sse(F)
        I=zeros(7,1);
        for i=1:2
            [j,Icurr] = fetchNext(F);
            I(1:length(Icurr),j)=Icurr;
        end
        I0p=I(:,1);
%         results[m,1]=min
%         results[m,2]=max
%         results[m,3]=ec50
%         results[m,4]=Hill coefficient
        results=ec502(A,I0p);
        ECcontrol=results(3);
        ncontrol=results(4);
        I3p=I(1:6,2);
        results=ec502(A,I(1:7,2));
        EC30=results(3);
        n30=results(4);
        
%         plot(A,I(1:7,2))
        
%         err=(sum(((I0p-I0).^2)./(2*v0.^2))+sum(((I3p-I3).^2)./(2*v3.^2)));
          err=sum([((I0p(3)-Icontrol(3))^2)/(2*10^2) ((n30-1.0)^2)/(2*0.1^2) ((EC30-0.5e-6)^2)/(2*(0.1e-6)^2) ((ncontrol-1.4)^2)/(2*0.1^2) ((ECcontrol-2.3e-6)^2)/(2*(0.2e-6)^2)]);
    end
    h=struct('getFutures',@sseFutures,'evalFutures',@sse);
end

