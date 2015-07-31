    baseParameters('k1')=0.3;
    baseParameters('k2')=50000;
    baseParameters('k3')=2.4;
    baseParameters('k4')=40000;
    baseParameters('k5')=1.68;
    baseParameters('k6')=7000;

    baseParameters('H1')=0.001;
    baseParameters('H2')=0.01;%1;
    baseParameters('H3')=0.005;%0.01;
    baseParameters('H4')=0.01;0.01;%0.1;
    baseParameters('H5')=0.005;;0.005;%1;%0.01;
    baseParameters('H6')=0.01;0.01;%0.1;
    baseParameters('H7')=0.005;0.005;%0.01;
    
    baseParameters('L1')=0.0001;
    baseParameters('L3')=2;
    baseParameters('L2')=0.001;

    baseParameters('g12') = (8/3)*10^-8;
    baseParameters('g34') = 8*10^-8;
    
%      baseParameters('g12') = 4.38*10^-8;
%     baseParameters('g34') = 10*10^-8;

    
    
    cf(1);plotPanelsActivation(anmarP2X7);
    cf(2);plotPanelsResponse(anmarP2X7);
%     
%     baseParameters('k2')=50000;
%     baseParameters('k1')=10;
    baseParameters('k3')=0.0222;
    baseParameters('k4')=8000;
%     baseParamters('k5')=100;
    
    cf(3);plotPanelsActivation(anmarP2X7);
    cf(4);plotPanelsResponse(anmarP2X7);
    