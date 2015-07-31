function b = cond(x)
global  g12 g34;
setParamsfullP2X7(x);

if g12<10^-4 && g34<4*g12 && g34>1.5*g12
    b=1;
else
    b=0;
end


end
