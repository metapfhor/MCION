function o = dr1(A)
global k1 k2 k3 k4 k5 k6 k7 H11 H51
global V g1

K1=k2/k1;
K2=k4/k3;
K3=k6/k5;

C0=H11/(H11+H51);

o=-10^12*V*g1*C0*K1*K2*(A.^2+K3*A.^3)./(1+K1*A+K1*K2*A.^2+K1*K2*K3*A.^3);


end

