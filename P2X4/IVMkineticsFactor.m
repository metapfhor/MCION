function f = indepcoopDilation(model)

    function  b = dilation(x)
        model.setParams(x);
        global Q A J
        global L11 L12 L13 L14 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 L51 L52 L53 L54 L61 L62 L63 L64
        global k1 k3 k5 k7 k9 k11 k13 k15 k17 k19 k21 k23
        global k2 k4 k6 k8 k10 k12 k14 k16 k18 k20 k22 k24
        global g1 g2 v1 v3 H3 H3D H2 H21 H22 H23 H24 d1 d2 d3 d4 d5 d6 d7 d8 d13 d19
        global delta epsilon mu
        global kd1 kd2 kd3 kd4 ks1 ks2 ks3 ks4
        global H11 H12 H13 H14 n1 n2
        
        global W1 W2 W3 W4 W5 W6 L1 L2 L3 L4


        A = 100e-6;
        J= 10e-6;
        model.getInfGeneratorMatrix();
        trQ=trace(Q);
        rho=30;
        if  delta>=3e-7&& delta<epsilon && epsilon<mu && W2>W1 && g1<g2 && g2<1.5*g1 % && L41<L42 && L42<L43 && L43<L44 && g1<g2% && v1<1 && v3<1 
            b=trQ/rho;%-sum([IVMback,IVMfor,H21,H22,H23,H24,d1,d3,d5,d7].^2);%-sum([500*IVMback,10000*IVMfor,Aback,Afor*Amax].^2);
        else
            b=0;
        end
    end
    f=@dilation;
end

