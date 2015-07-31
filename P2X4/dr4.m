function o = dr1(A)
global k19 k20 k21 k22 k23 k24 H51 H14
global V g2

K1=k20/k19;
K2=k22/max(k21,1e-5);
K3=k24/max(k23,1e-5);

C0=H14/(H14+H51);

o=-10^12*V*g2*C0*K1*K2*(A.^2+K3*A.^3)./(1+K1*A+K1*K2*A.^2+K1*K2*K3*A.^3);


end

