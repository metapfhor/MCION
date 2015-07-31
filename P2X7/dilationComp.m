function b=dilation(x)
    function p=open(A)
        alpha = K1*A;
        beta = K2*A*alpha;
        gamma = K3*A*beta;
        p=(beta+gamma)/(1+alpha+beta+gamma);
    end

global k1eff k2eff k3eff k4eff k5eff k6eff A EC1 EC2 EC3;
setParamshill3P2X7(x);
setAuxiliaryhill3P2X7();
Alow=0.1*10^-6;
Ahigh=10*10^-6;
A=Ahigh;
setAuxiliaryhill3P2X7();
K1 = 3*k2eff/k1eff;
K2 = k4eff/k3eff;
K3 = k6eff/(3*k5eff);
r1=open(Ahigh);
A=Alow;
setAuxiliaryhill3P2X7();
K1 = 3*k2eff/k1eff;
K2 = k4eff/k3eff;
K3 = k6eff/(3*k5eff);
r2=open(Alow);
r=r1/r2;
if EC1<10^-5 && EC2<10^-5 && EC3<10^-5 && r1~=0 && r2~=0 && r>100
    b=1;
else
    b=0;
end

end

