function b = poolDilation(x)

    %DILATION Summary of this function goes here
    %   Detailed explanation goes here
    global potentP2X4pool ku L1 L3 L5 a1 a2 a3 g1 g2 H2 H3 epsilon mu k9 k11 v1 v2 v3 r1 r2 r3 w1 w2 w3 s1 s2 s3


    potentP2X4pool.setParams(x);
    
    if  ku<min([L1,L3,L5]) && H3<H2 && g1<g2 && v1<1 && v2<v1 && v3<v2 && w1<1 && w3<w2 && w2<w1 && r2/v2>r1/v1 && r3/v3>r2/v2 && s2/w2>s1/w1 && s3/w3>s2/w2 && s3/w3<r3/v3 
        b=1;
    else
        b=0;
    end

end




