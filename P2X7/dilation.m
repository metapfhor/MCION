function b=dilation(x)
%     function p=open(A)
%         alpha = K1*A;
%         beta = K2*A*alpha;
%         gamma = K3*A*beta;
%         p=(beta+gamma)/(1+alpha+beta+gamma);
%     end
% 
% global k1 k2 k3 k4 k5 k6;
% setParamsfullP2X7(x);
% 
% Alow=0.1*10^-6;
% Ahigh=10*10^-6;
% K1 = 3*k2/k1;
% K2 = k4/k3;
% K3 = k6/(3*k5);
% 
% if open(Ahigh)/open(Alow)>10
%     b=1;
% else
%     b=0;
% end

b=1; 
return

    global n g0 g1 gd K1 K2 K3 K4 K5 K6 K7 k1 k2 k3 k4 k5 k6 k7 k9 k10 k12 k8 k11 L3 L2 L5 L6 H7 alpha1 alpha3 alpha10 alpha32 alpha100 baseModel Kd Ks Kds Ks2 Ks1 Ks3;
    function ss=O1(A)
        ss=(1/27)*K2*A^2*K5^3*K1/((1/27)*A^3*K1*K2*K3*K4*K5^3+(1/27)*A^3*K1*K2*K3*K5^3+(1/27)*A^2*K1*K2*K3*K4*K5^2+(1/27)*A^2*K1*K2*K5^3+(1/9)*A*K1*K2*K3*K4*K5+(1/27)*A*K1*K5^3+K1*K2*K3*K4+(1/27)*K5^3);
    end
    function ss=O2(A)
        ss =(1/27)*K3*A^3*K2*K5^3*K1/((1/27)*A^3*K1*K2*K3*K4*K5^3+(1/27)*A^3*K1*K2*K3*K5^3+(1/27)*A^2*K1*K2*K3*K4*K5^2+(1/27)*A^2*K1*K2*K5^3+(1/9)*A*K1*K2*K3*K4*K5+(1/27)*A*K1*K5^3+K1*K2*K3*K4+(1/27)*K5^3);
    end

    function ss=O3(A)
        ss=(1/27)*K5^3*A^3*K4*K3*K2*K1/((1/27)*A^3*K1*K2*K3*K4*K5^3+(1/27)*A^3*K1*K2*K3*K5^3+(1/27)*A^2*K1*K2*K3*K4*K5^2+(1/27)*A^2*K1*K2*K5^3+(1/9)*A*K1*K2*K3*K4*K5+(1/27)*A*K1*K5^3+K1*K2*K3*K4+(1/27)*K5^3);
    end
    function ss=O4(A)
        ss=(1/27)*K5^2*A^2*K4*K3*K2*K1/((1/27)*A^3*K1*K2*K3*K4*K5^3+(1/27)*A^3*K1*K2*K3*K5^3+(1/27)*A^2*K1*K2*K3*K4*K5^2+(1/27)*A^2*K1*K2*K5^3+(1/9)*A*K1*K2*K3*K4*K5+(1/27)*A*K1*K5^3+K1*K2*K3*K4+(1/27)*K5^3);
    end

    Alow=0.1*10^-6;
    Ahigh=1*10^-5;10*10^-6;
    Amax=3.2*10^-5;
    
    
    
%     setParamsfullP2X7Therm(x);
%     setAuxiliaryfullP2X7Therm(x);

    baseModel.setParams(x);
    baseModel.setAuxiliary(x);
    

    
    if gd>g0 && gd>g1 && gd<800*g0 && L5>L6
        b=1;
    else
        b=0;
    end

    return;

    if L3>10^-2 && n>0.5 && n<5 && g12>=10^-10 && g12<10^-7 && g34>1.5*g12 && g34<80*g12 && k1>10^-2 && k1<100 && k10>10^4 && k12>10^4 && k8>10^-3 && L3>=1 && L3<100 && k7>9*10^-2 && k7<1 && k11>10^-3 && k11<100 && L2<5000 && L2>10^-3 && k6<10^5 && k4<10^5 && k8>=10^1
        b=1;
    else
        b=0;
    end
    
    return;
    
    if alpha100>=1 && alpha1>10^-5 && k1>0.001 && Ks2>10^5 && Ks3>10^4 && Ks1>10^5 && Kd<1 && Kd>0.01 && Kds>1 && Ks>1 && L5<1 && L3>7 && k5>10^-2  && L3<1000
        b=1;
    else
        b=0;
    end
    return

%  if H7>10^-3 && L3>H7 && alpha10>1 && alpha32>1 && alpha100>1 && k1>0.1 && k1<10^3 && k3>10^-4 && L3>1 && L3<500 && Kd<10000 &&  k3<0.05  && L5<1 && Ks3>10^5 && Ks3<10^8 && K5>10^5 && K5<10^6 && K6>10^4 && K7>10^5 && k9>10^-2 && k9<2  && k7<2 && k7>10^-2 && k11>10^-4

    if H7>10^-3 && H7<0.5 && L3>H7 && L5>H7 && k1>0.1 && k1<10^3 && k3>10^-4 && L3>1 && L3<500 && Kd<1 && Kd>10^-2 && Ks>1 && Kds>1 && k3<0.05  && L5<1 && Ks3>10^5 && Ks2>10 && Ks1>10 && k9>10^-2 && k9<2  && k7<2 && k7>10^-2 && k11>10^-4
        b=1;
    else
        b=0;
    end
    return
    
    setParamsfullerP2X7(x);
    setAuxiliaryfullerP2X7(x);


    if k1>0.1 && k1<10^3 && k3>10^-4 && k4<k6 && k4*Alow<k5  && k6*10^-7<k5 && k6*10^-5>k5 && L3>10 && L3<1000 && K4<1 && L5>10^-4 && L5>10^-3 && k3<0.1 && H7>10^-5
        b=1;
    else
        b=0;
    end
    return
    
%     O1low=O1(Alow);
%     O2low=O2(Alow);
%     O4low=O4(Alow);
%     O3low=O3(Alow);
%     O2hi=O2(Ahigh);
    rdolow=K4*K3*(Alow*K5+1)/K5;
      rdohigh=K4*K3*(Ahigh*K5+1)/K5;
      r43=1/(K5*Ahigh);
%     Aod=-(K3*K4-K5)/(K3*K5*(K4-1));
% 
%     v3med=(K3*3*k5*10^-6);
%     v3hi=(K3*3*k5*10^-5);

   % if  k1>0.01 && k3<10 && k3>10^-4 && K6>10^4 && K4>10^-4 && k9<5 && k7<1000 && L3>0.01 && L3<100 && k7>10^-3 && k11>10^-4 && k5>10^-2 && k5<100 && k1<100 % && v3med<=L3 && v3hi>L3
     %conditons on backwards rates
    if  L3>1 && L3<400 && k3<1 && k5<1000 && k7<1 && k1<100 && k7>10^-3 && k6>100 && K3<10^5 && k9<L2 && k9>10^-3 && k1>10^-3 && k11>10^-3
        %conditions on steday state
        if  K6>1 && K7>1 && 5*10^4<K5 && K5<10^6 && K4>1 && K4<50 && rdolow<1 && rdohigh>1 && r43>0.1
            b=1;
        else
            b=0;
        end
    else
        b=0;
    end
end

