function p = expCond(x)
global g12 g34;
setParamscalP2X7(x);
lambda1=1/1.5*10^-8;
p1=lambda1*exp(-lambda1*g12);
lambda2=1/4.5*10^-8;
p2=lambda2*exp(-lambda2*g34);

p=p1*p2;


end

