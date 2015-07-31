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

        IVMback=[L11,L12,L13,L14,L31,L32,L33,L34,L51,L52,L53,L54];
        IVMfor=[L21,L22,L23,L24,L41,L42,L43,L44,L61,L62,L63,L64];
        Aback=[k1,k3,k5,k7,k9,k11,k13,k15,k17,k19,k21,k23];
        Afor=[k2,k4,k6,k8,k10,k12,k14,k16,k18,k20,k22,k24];
        Amax=10^-4;
%         forfaster = k2<k8 && k8<k14 && k14<k20 && k4<k10 && k10<k16 && k16<k22 && k6<k12 && k12<k18 && k18<k24; 
        poscoopfor =  k2<k4 && k4<k6 && k8<k10 && k10<k12 && k14<k16 && k16<k18 && k20<k22 && k22<k24;
        poscoopback =  k3<=k5 && k9<=k11 && k15<=k17 && k21<=k23;
        slowdownback = k3>k9 && k9>k15 && k15>k21;
        
        slowdownfor = k8>k2 && k8>k14 && k14>k20;
     
%         desense = L22<kd2 && L23<kd2 && L42<kd3 && L43<kd3 && L62<kd4 && L63<kd4 ;
%         sense = H11<H12 && H12<H13 && H13<H14 && ks2<ks3 && ks3<ks4 && k14>k2 && k16>k4 && k18>k6 && k20>k2 && k22>k4 && k24>k6;
%         resense = d1>H11 && d7>H12 && d13>H13 && d19>H14;
        
%         ivmatpcoop = L22<L23 && L23<=L24 && L42<=L43 && L43<=L44 && L62<=L63 && L63<=L64;% && L12<L13 && L13<L14 && L32<L33 && L33<L34 && L52<L53 && L53<L54;
       
        A = 100e-6;
        J= 10e-6;
        model.getInfGeneratorMatrix();
        trQ=trace(Q);
        rho=30;
        if delta>=3e-7&& delta<epsilon && epsilon<mu && g1<g2 && g2<1.5*g1 % && L41<L42 && L42<L43 && L43<L44 && g1<g2% && v1<1 && v3<1 
            b=trQ/rho;%-sum([IVMback,IVMfor,H21,H22,H23,H24,d1,d3,d5,d7].^2);%-sum([500*IVMback,10000*IVMfor,Aback,Afor*Amax].^2);
        else
            b=0;
        end
    end
    f=@dilation;
end

