function b = ParamCheck(x,l)
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 alpha;
setParamsP2X4(x);
b=1;

% if l==1 && H1>1e-4 && H1<0.1 && H2>0.06 && H2<0.8 && H3>0.01 && H3<10 && H4>1e-6 && H4<0.1 && k1<1 && k1>1e-4 && k2<1.6e6 && k2>1e5 && k4<1.5e6 && k4>1e5 && k6<1.5e6 && k6>1e5 && k3<1.2 && k3>0.01 && k5<1.2 && k5>0.01 %&& k4/k3>k6/k5 && k2/k1>k4/k3
%     b=1;
% elseif l==2 
%     b=1; 
% elseif l==3
%     b=1;
% else
%     b=0;    
% end

if g2<50e-8
    b=1;
else
    b=0;
end

% b=1;

end

