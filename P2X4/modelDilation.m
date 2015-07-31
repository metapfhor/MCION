function h = modelDilation(model)

    function b = dilation(x)
    %DILATION Summary of this function goes here
    %   Detailed explanation goes here
    global a1 a2 a3 g1 g2 H2 H3 epsilon mu k9 k11 v1 v2 v3 r1 r2 r3 L2 rho3 rho2 rho1 gamma1 gamma2 gamma3


    model.setParams(x);
    
%   c  if a1>=1 && g1<g2 && a2>=a1 && a3>=a2 && a3*g1<g2
    if  g1<g2 && rho1>=1 && rho1<rho2 && rho2<rho3 && rho3>10 && 100*r1<r2 && r2>1 && r2<r3 && gamma1>1 && gamma2>gamma1 && gamma3>gamma2
        b=1;%-(L2^2+rho3^2);
    else
        b=0;
    end

    end

    h=@dilation;


end

