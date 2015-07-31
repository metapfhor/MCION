function o = dr1(A)
global k13 k14 k15 k16 k17 k18 H51 H13
global V g2

K1=k14/k13;
K2=k16/k15;
K3=k18/k17;

C0=H13/(H13+H51);

o=-10^12*V*g2*C0*K1*K2*(A.^2+K3*A.^3)./(1+K1*A+K1*K2*A.^2+K1*K2*K3*A.^3);


end

