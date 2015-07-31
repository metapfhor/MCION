    global baseParameters
    baseParameters=containers.Map();
    
    a=1;
    m_cal=1;%17.9532;
    
    baseParameters('k1')=0.3;
    baseParameters('k2')=m_cal*40000*a;
    baseParameters('k3')=1.68*10^-2;
    baseParameters('k4')=m_cal*50000*a;%50000;
    baseParameters('k5')=3.3*10^-1;
    baseParameters('k6')=m_cal*7000*a;
    
    baseParameters('k11')=0.25;
    baseParameters('k12')=m_cal*40000*a;
    baseParameters('k9')=1.68*10^-2;
    baseParameters('k10')=m_cal*50000*a;%50000;
    baseParameters('k8')=3.3*10^-1;
    baseParameters('k7')=m_cal*7000*a;
    
    baseParameters('k17')=0.25;
    baseParameters('k18')=m_cal*40000*a;
    baseParameters('k15')=1.68*10^-2;
    baseParameters('k16')=m_cal*50000*a;%50000;
    baseParameters('k13')=3.3*10^-1;
    baseParameters('k14')=m_cal*7000*a;



    dfor=0.01;
    dback=1;
    
    baseParameters('H1')=0.001;
    baseParameters('H0')=dfor;
    baseParameters('H2')=dback;%1;
    baseParameters('H3')=dfor;%0.01;
    baseParameters('H4')=dback;%0.1;
    baseParameters('H5')=dfor;%1;%0.01;
    baseParameters('H6')=dback;0.1;
    baseParameters('H7')=dfor;%0.01;

    
    K4=10^3;
    
    baseParameters('K4')=40;
    baseParameters('L1')=0.001;
    baseParameters('L3')=100;
    baseParameters('L2')=10;%baseParameters('L3')/K4;
    baseParameters('L4')=0.001;
    baseParameters('L5')=0.1;
    baseParameters('L6')=0.01;%baseParameters('L3')/K4;
    
    baseParameters('g12')= (8/3)*10^-8;
    baseParameters('g34')= 8*10^-8;
   % baseParameters('g34')= 5.4*10^-8;
    
    
    baseParameters('E12')=0;
    baseParameters('E34')=0;
    
    
    baseParameters('r1')=2.4;
    baseParameters('r2')=1;
    baseParameters('rca')=0.5;
    baseParameters('kca')=10^7;
    ronoff=0.01;
    baseParameters('koff')=10^4;
    baseParameters('C')=2*10^-3;
    
    baseParameters('A')=0;
    baseParameters('V')=-60*10^-3;

    
    
    baseParameters('K1')=8.38302e+05;
 
    baseParameters('K2')=3.8*10^5.5;
  
    baseParameters('K3')=1*10^5;
   
     
     baseParameters('K5')=10^8;

  baseParameters('K6')=10^8;
    baseParameters('K7')=10^8;

    baseParameters('n')=2;
    
    baseParameters('EC')=10^-6;
    
    baseParameters('EC1')=2.475*10^-6;
    baseParameters('EC4')=1.706*10^-7;
    baseParameters('EC3')=8.905*10^-7;
    baseParameters('EC6')=7.73*10^-7;
    
    
    baseParameters('k8')=10^7;
    baseParameters('k7')=7;
    
    
    
        
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
    baseParameters('L3')=10;
    baseParameters('L2')=0.01;
    
        baseParameters('g12')= 1.5*10^-8;
    baseParameters('g34')= 4.5*10^-8;
    
        baseParameters('g12')= (8/3)*10^-8;
    baseParameters('g34')= 8*10^-8;
   % cf(13);plotPanelsResponse(fullerP2X7);