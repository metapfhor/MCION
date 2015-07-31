function o = dr1(A)
global k7 k8 k9 k10 k11 k12 H12 H51
global V g1

K1=k8/k7;
K2=k10/k9;
K3=k12/k11;

C0=H12/(H12+H51);

o=-10^12*V*g1*C0*K1*K2*(A.^2+K3*A.^3)./(1+K1*A+K1*K2*A.^2+K1*K2*K3*A.^3);


end

