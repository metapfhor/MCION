function f = indepcoopDilation(model)

    function  b = dilation(x)
        model.setParams(x);
        
        global L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64
        global k1 k3 k5 k7 k9 k11 k13 k15 k17 k19 k21 k23
        global k2 k4 k6 k8 k10 k12 k14 k16 k18 k20 k22 k24
        global g1 g2 v1 v3 H3 H2 H21 H22 H23
        IVMback=[L11,L12,L13,L14,L31,L32,L33,L34,L51,L52,L53,L54];
        IVMfor=[L21,L22,L23,L24,L41,L42,L43,L44,L61,L62,L63,L64];
        Aback=[k1,k3,k5,k7,k9,k11,k13,k15,k17,k19,k21,k23];
        Afor=[k2,k4,k6,k8,k10,k12,k14,k16,k18,k20,k22,k24];
        Amax=10^-4;
        if   g1<g2 && H3<H2 % && L41<L42 && L42<L43 && L43<L44 && g1<g2% && v1<1 && v3<1 
            b=1;%-sum([500*IVMback,10000*IVMfor,Aback,Afor*Amax].^2);
        else
            b=0;
        end
    end
    f=@dilation;
end

