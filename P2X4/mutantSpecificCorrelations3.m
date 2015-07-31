function [EC,Erev,Imax,tauoff] = mutantSpecificCorrelations2(x,model)
global ks2 ks3 ks4 kd2 kd3 kd4 E1 E2 g2 g1 H2 L51 L52 L53 L54 L61 L62 L63 L64 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 k7 k9 k11 k13 k17 k19 k15 k21 k23 L11 L12 L13 L14 k2 k4 k6 k1 k3 k5 k8 k10 k12 k14 k16 k18 k20 k22 k24 alpha1 alpha2 alpha3 beta1 beta2 beta3


Nrep=1;
Nclone=21;


EC=nan(Nclone,1);
vEC=nan(size(EC));
ECtemp=nan(Nrep,1);

Erev=nan(Nclone,1);
vErev=nan(size(Erev));
Etemp=nan(Nrep,1);

Imax=nan(Nclone,1);
vImax=nan(size(Imax));
Itemp=nan(Nrep,1);

tauoff=nan(Nclone,1);
vtau=nan(size(tauoff));
tautemp=nan(Nrep,1);

% WT

for i=1:Nrep
    model.setParams(x);

    [ECtemp(i),Etemp(i),Itemp(i),tautemp(i)]=correlationMeasurement(model);
    
end

EC(1)=sum(ECtemp)/Nrep;
Erev(1)=sum(Etemp)/Nrep;
Imax(1)=sum(Itemp)/Nrep;
tauoff(1)=sum(tautemp)/Nrep;


vEC(1)=std(ECtemp)/sqrt(Nrep);
vErev(1)=std(Etemp)/sqrt(Nrep);
vImax(1)=std(Itemp)/sqrt(Nrep);
vtau(1)=std(tautemp)/sqrt(Nrep);

% % 
% for i=2:4
%     for j=1:Nrep
%      
%         model.setParams(x);
%   
%     
%        L21=L21*(1.5+0.1*symrand());
%         L22=L22*(1.7+0.15*symrand());
%         L23=L23/(1.4+0.2*symrand());
%         L24=L24/(1.4+0.2*symrand());
%         
%         L11=L11*(4.5+3.2*symrand());
%         L12=L12*(6+4*symrand());
%         L13=L13*(4.9+2.5*symrand());
%         L14=L14*(4.9+2.5*symrand());
%         
%         L41=L41/(14+5*symrand());
%         L42=L42/(14+5*symrand());
%         L43=L43/(14+5*symrand());
%         L44=L44/(14+5*symrand());
%         
%         k7=(1.1+0.02*symrand())*k7;
%         k9=(1.1+0.02*symrand())*k9;
%         k11=(1.1+0.02*symrand())*k11;
%         k15=(1.1+0.6*symrand())*k15;
%         k17=(1.1+0.5*symrand())*k17;
%         k19=(1.1+0.4*symrand())*k19;
%         k21=(1.1+0.3*symrand())*k21;
%         k23=(1.1+0.2*symrand())*k23;
%         
%         k8=(1.1+0.02*symrand())*k8;
%         k10=(1.1+0.02*symrand())*k10;
%         k12=(1.1+0.04*symrand())*k12;
%         k14=(1.1+0.04*symrand())*k14;
%         k16=(1.1+0.09*symrand())*k16;
%         k18=(1.1+0.04*symrand())*k18;
%         k22=(1.1+0.06*symrand())*k22;
%         k24=(1.1+0.06*symrand())*k24;
%         
%         k1=(1.1+0.04*symrand())*k1;
%         k3=(1.1+0.06*symrand())*k3;
%         k5=(1.3+0.06*symrand())*k5;
%         k2=(2+0.4*symrand())*k2;
%         k4=(3+0.6*symrand())*k4;
%         k6=(8+1.6*symrand())*k6;
%         
%         
%         [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
%     end
%     EC(i)=sum(ECtemp)/Nrep;
%     Erev(i)=sum(Etemp)/Nrep;
%     Imax(i)=sum(Itemp)/Nrep;
%     tauoff(i)=sum(tautemp)/Nrep;
%     
%     vEC(i)=std(ECtemp)/sqrt(Nrep);
%     vErev(i)=std(Etemp)/sqrt(Nrep);
%     vImax(i)=std(Itemp)/sqrt(Nrep);
%     vtau(i)=std(tautemp)/sqrt(Nrep);
%     
% end
% 

%D331A

for j=1:Nrep
 
    model.setParams(x);
  
    k2=k2*(1.6+0.05*symrand());
    k4=k4*(1.6+0.05*symrand());
    k6=k6*(1.6+0.05*symrand());
    
    L42=L42/5.1;
    L43=L43/5.1;
    L44=L44/5.1;
    

    
    

  
    kd2=kd2*1.4;  
    kd3=kd3*1.3;
    kd4=kd4*2.2;
    
    k9=k9*(1.3+0.02*symrand());
    k11=k11*(1.3+0.02*symrand());
    
    k15=k15*(2.2+0.05*symrand());
    k17=k17*(1.3+0.05*symrand());

    
    k10=k10/(1.2+0.02*symrand());
    k12=k12/(1.2+0.02*symrand());
    k16=k16/(1.2+0.02*symrand());
    k18=k18/(1.2+0.02*symrand());
    

 
    g1=g1/1.4;
    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(21)=sum(ECtemp)/Nrep;
Erev(21)=sum(Etemp)/Nrep;
Imax(21)=sum(Itemp)/Nrep;
tauoff(21)=sum(tautemp)/Nrep;

vEC(21)=std(ECtemp)/sqrt(Nrep);
vErev(21)=std(Etemp)/sqrt(Nrep);
vImax(21)=std(Itemp)/sqrt(Nrep);
vtau(21)=std(tautemp)/sqrt(Nrep);



%F330A

for j=1:Nrep
 
    model.setParams(x);
  
    k2=k2/(1.45+0.05*symrand());
    k4=k4/(1.45+0.05*symrand());
    k6=k6/(1.45+0.05*symrand());
    
    L42=L42/3.6;
    L43=L43/3.6;
    L44=L44/3.6;
    
    kd2=kd2*1.5;
    
    k9=k9*(1.5+0.02*symrand());
    k11=k11*(1.5+0.02*symrand());
    
    kd3=kd3*1.5;
    
    kd4=kd4*2.5;
    
    k15=k15*(2.5+0.05*symrand());
    k17=k17*(1.5+0.05*symrand());
  
    g1=g1/1.1;
    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(20)=sum(ECtemp)/Nrep;
Erev(20)=sum(Etemp)/Nrep;
Imax(20)=sum(Itemp)/Nrep;
tauoff(20)=sum(tautemp)/Nrep;

vEC(20)=std(ECtemp)/sqrt(Nrep);
vErev(20)=std(Etemp)/sqrt(Nrep);
vImax(20)=std(Itemp)/sqrt(Nrep);
vtau(20)=std(tautemp)/sqrt(Nrep);



%K326A

for j=1:Nrep
 
    model.setParams(x);
  
    L42=L42/1.8;
    L43=L43/1.8;
    L44=L44/1.8;


    k8=k8/(2+0.05*symrand());
    k10=k10/(2+0.05*symrand());
    k12=k12/(2+0.05*symrand());
    
    
    
    k14=k14/(2+0.05*symrand());
    k16=k16/(2+0.05*symrand());
    k18=k18/(2+0.05*symrand());
    
    kd2=kd2/1.5;
    kd3=kd3/1.5;
    

    
    

    k9=k9/(1.3+0.2*symrand());
    k11=k11/(1.3+0.2*symrand());
    
    k15=k15/(1.4+symrand());
    k17=k17/(1.4+symrand());
    
    g1=g1/1.6;
    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(2)=sum(ECtemp)/Nrep;
Erev(2)=sum(Etemp)/Nrep;
Imax(2)=sum(Itemp)/Nrep;
tauoff(2)=sum(tautemp)/Nrep;

vEC(2)=std(ECtemp)/sqrt(Nrep);
vErev(2)=std(Etemp)/sqrt(Nrep);
vImax(2)=std(Itemp)/sqrt(Nrep);
vtau(2)=std(tautemp)/sqrt(Nrep);


%T57A

for j=1:Nrep
 
    model.setParams(x);
    
    L42=L42*1.3;
    L43=L43*1.3;
    L44=L44*1.3;


    k8=k8/(1.48+0.05*symrand());
    k10=k10/(1.48+0.05*symrand());
    k12=k12/(1.48+0.05*symrand());
    
    k14=k14/(1.48+0.05*symrand());
    k16=k16/(1.48+0.05*symrand());
    k18=k18/(1.48+0.05*symrand());
    
    g1=g1/2.05;

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(3)=sum(ECtemp)/Nrep;
Erev(3)=sum(Etemp)/Nrep;
Imax(3)=sum(Itemp)/Nrep;
tauoff(3)=sum(tautemp)/Nrep;

vEC(3)=std(ECtemp)/sqrt(Nrep);
vErev(3)=std(Etemp)/sqrt(Nrep);
vImax(3)=std(Itemp)/sqrt(Nrep);
vtau(3)=std(tautemp)/sqrt(Nrep);


%E56A

for j=1:Nrep
 
    model.setParams(x);
    

    L42=L42/2.1;
    L43=L43/2.1;
    L44=L44/2.1;


    k8=k8/(1.23+0.05*symrand());
    k10=k10/(1.23+0.05*symrand());
    k12=k12/(1.23+0.05*symrand());
    
    k14=k14/(1.23+0.05*symrand());
    k16=k16/(1.23+0.05*symrand());
    k18=k18/(1.23+0.05*symrand());
    
    g1=g1/2;
    

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(4)=sum(ECtemp)/Nrep;
Erev(4)=sum(Etemp)/Nrep;
Imax(4)=sum(Itemp)/Nrep;
tauoff(4)=sum(tautemp)/Nrep;

vEC(4)=std(ECtemp)/sqrt(Nrep);
vErev(4)=std(Etemp)/sqrt(Nrep);
vImax(4)=std(Itemp)/sqrt(Nrep);
vtau(4)=std(tautemp)/sqrt(Nrep);



%G53A

for j=1:Nrep
 
    model.setParams(x);
    

    L41=L41*1.5;
    L42=L42/1.5;
    L43=L43/1.5;
    L44=L44/1.5;
    
    L32=L32*1.4;
    L33=L33*1.4;
    L34=L34*1.4;
        
    k2=k2/(1.8+0.05*symrand());
    k4=k4/(1.8+0.05*symrand());
    k6=k6/(1.8+0.05*symrand());
   
    
    kd3=kd3*5;
    kd4=kd4*15;
    ks4=ks4/20;

    
    k9=k9*(6+0.2*symrand());
    k11=k11*(6+0.2*symrand());
    k15=k15*(6+symrand());
    k17=k17*(6.4+0.2*symrand());

 
    g2=g2/1.3;



    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(5)=sum(ECtemp)/Nrep;
Erev(5)=sum(Etemp)/Nrep;
Imax(5)=sum(Itemp)/Nrep;
tauoff(5)=sum(tautemp)/Nrep;

vEC(5)=std(ECtemp)/sqrt(Nrep);
vErev(5)=std(Etemp)/sqrt(Nrep);
vImax(5)=std(Itemp)/sqrt(Nrep);
vtau(5)=std(tautemp)/sqrt(Nrep);



%W50A

for j=1:Nrep
 
    model.setParams(x);
    
    L41=L41*1.5;
    
    L32=L32*1.6;
    L33=L33*1.6;
    L34=L34*1.6;
        
    k2=k2/(1.6+0.05*symrand());
    k4=k4/(1.6+0.05*symrand());
    k6=k6/(1.6+0.05*symrand());
   
    kd3=kd3*5;
    kd4=kd4*15;
    ks4=ks4/20;

    
    k9=k9*(6+0.2*symrand());
    k11=k11*(6+0.2*symrand());
    k15=k15*(6+symrand());
    k17=k17*(6.4+0.2*symrand());

    g2=g2*1.3;



    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(5)=sum(ECtemp)/Nrep;
Erev(5)=sum(Etemp)/Nrep;
Imax(5)=sum(Itemp)/Nrep;
tauoff(5)=sum(tautemp)/Nrep;

vEC(5)=std(ECtemp)/sqrt(Nrep);
vErev(5)=std(Etemp)/sqrt(Nrep);
vImax(5)=std(Itemp)/sqrt(Nrep);
vtau(5)=std(tautemp)/sqrt(Nrep);



%V47A

for j=1:Nrep
 
    model.setParams(x);
    
    L32=L32*7.5;
    L33=L33*7.5;
    L34=L34*7.5;
        
    k2=k2/(2.2+0.05*symrand());
    k4=k4/(2.2+0.05*symrand());
    k6=k6/(2.2+0.05*symrand());
   
    kd4=kd4*10;
    ks4=ks4/10;
    
    kd3=kd3*5;
    kd2=kd2*2;

    k9=k9*(10.4+0.2*symrand());
    k11=k11*(10.4+0.2*symrand());
    
    k15=k15*(35+symrand());
    k17=k17*(15.4+0.2*symrand());

    g2=g2*1.3;

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(6)=sum(ECtemp)/Nrep;
Erev(6)=sum(Etemp)/Nrep;
Imax(6)=sum(Itemp)/Nrep;
tauoff(6)=sum(tautemp)/Nrep;

vEC(6)=std(ECtemp)/sqrt(Nrep);
vErev(6)=std(Etemp)/sqrt(Nrep);
vImax(6)=std(Itemp)/sqrt(Nrep);
vtau(6)=std(tautemp)/sqrt(Nrep);



%W46A

for j=1:Nrep
 
    model.setParams(x);
    
    L21=L21*3;
    
    L31=L31*10;
    L32=L32*4;
    L33=L33*4;
    L34=L34*4;
    
    k2=k2*(1.2+0.05*symrand());
    k4=k4*(1.2+0.05*symrand());
    k6=k6*(1.2+0.05*symrand());
    
    ks3=ks3*10;
    ks2=ks2*6;
    
    k7=k7*(20.4+0.2*symrand());
    k9=k9*(20.4+0.2*symrand());
    k11=k11*(20.4+0.2*symrand());
    k13=k13*(40.4+0.2*symrand());
    k15=k15*(40+symrand());
    k17=k17*(40.4+0.2*symrand());

    g1=g1/1.8;
    
    
 

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(7)=sum(ECtemp)/Nrep;
Erev(7)=sum(Etemp)/Nrep;
Imax(7)=sum(Itemp)/Nrep;
tauoff(7)=sum(tautemp)/Nrep;

vEC(7)=std(ECtemp)/sqrt(Nrep);
vErev(7)=std(Etemp)/sqrt(Nrep);
vImax(7)=std(Itemp)/sqrt(Nrep);
vtau(7)=std(tautemp)/sqrt(Nrep);

% 
% 
%V43A

for j=1:Nrep
 
    model.setParams(x);

    L21=L21/(1.8+0.1*symrand());
    L22=L22/(1.6+0.1*symrand());
    L23=L23*(1.6+0.1*symrand());
    L24=L24*(1.8+0.1*symrand());

    L11=L11*(12.5+0.1*symrand());
    L12=L12*(12.8+0.1*symrand());
    L13=L13*(13+0.1*symrand());
    L14=L14*(13.5+0.1*symrand());

    L31=L31*(6+0.1*symrand());
    L32=L32*(6+0.1*symrand());
    L33=L33*(6+0.1*symrand());
    L34=L34*(6+0.1*symrand());
    


    k2=k2/(1.5+0.05*symrand());
    k4=k4/(1.5+0.05*symrand());
    k6=k6/(1.5+0.05*symrand());
    
    k7=k7*(4+0.2*symrand());
    k9=k9*(4+0.2*symrand());
    k11=k11*(4+0.2*symrand());
    
    k15=k15*(24+symrand());
    k17=k17*(24+symrand());
    

    
   
    k8=k8/(2+0.2*symrand());
    k16=k16/(3+0.2*symrand());
    k22=k22/(6+0.3*symrand());
    k24=k24/(6+0.3*symrand());

    g2=g2/1.15;


    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(8)=sum(ECtemp)/Nrep;
Erev(8)=sum(Etemp)/Nrep;
Imax(8)=sum(Itemp)/Nrep;
tauoff(8)=sum(tautemp)/Nrep;

vEC(8)=std(ECtemp)/sqrt(Nrep);
vErev(8)=std(Etemp)/sqrt(Nrep);
vImax(8)=std(Itemp)/sqrt(Nrep);
vtau(8)=std(tautemp)/sqrt(Nrep);


%L40A

for j=1:Nrep
 
    model.setParams(x);
    
    L31=L31*(5.1+0.1*symrand());
    L32=L32*(5.1+0.1*symrand());
    L33=L33*(5.1+0.1*symrand());
    L34=L34*(5.2+0.1*symrand());

    k2=k2/(1.1+0.01*symrand());
    k4=k4/(1.1+0.01*symrand());
    k6=k6/(1.2+0.01*symrand());
    
    k9=k9*(5+0.2*symrand());
    
    k15=k15*(30+symrand());
    k17=k17*(30+symrand());

    kd4=kd4*3;

    k8=k8/(2+symrand());
    k16=k16/(3+2*symrand());
    k22=k22/(6+3*symrand());
    k24=k24/(6+3*symrand());
    
    g2=g2*1.3;
    

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(9)=sum(ECtemp)/Nrep;
Erev(9)=sum(Etemp)/Nrep;
Imax(9)=sum(Itemp)/Nrep;
tauoff(9)=sum(tautemp)/Nrep;

vEC(9)=std(ECtemp)/sqrt(Nrep);
vErev(9)=std(Etemp)/sqrt(Nrep);
vImax(9)=std(Itemp)/sqrt(Nrep);
vtau(9)=std(tautemp)/sqrt(Nrep);



%I337A

for j=1:Nrep
 
    model.setParams(x);

    L21=L21*2.4;
    L22=L22*1.5;
    L23=L23*2;
    L24=L24*2.5;

    
    L31=L31*6.5;
    L32=L32*6.5;
    L33=L33*6;
    L34=L34*6.5;
    
    k2=k2*(1.6+0.2*symrand());
    k4=k4*(1.6+0.2*symrand());



    k9=k9*(10+0.2*symrand());  
    k11=k11*(10+0.2*symrand());
    k15=k15*(50);
    k17=k17*(10);

    kd4=kd4*3;
    
    g2=g2*1.15;
    
    

    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(10)=sum(ECtemp)/Nrep;
Erev(10)=sum(Etemp)/Nrep;
Imax(10)=sum(Itemp)/Nrep;
tauoff(10)=sum(tautemp)/Nrep;

vEC(10)=std(ECtemp)/sqrt(Nrep);
vErev(10)=std(Etemp)/sqrt(Nrep);
vImax(10)=std(Itemp)/sqrt(Nrep);
vtau(10)=std(tautemp)/sqrt(Nrep);



%I332A
for j=1:Nrep
 
    model.setParams(x);


    L13=L13/5;
    L14=L14/5;


    L32=L32*4;
    L33=L33*5;
    L34=L34*7;

 
    k2=k2*(2.2+0.05*symrand());
    k4=k4*(2.2+0.05*symrand());
    k6=k6*(2.2+0.05*symrand());

    k7=k7/(200.4+0.2*symrand());
    k9=k9/(200.4+0.2*symrand());
    k11=k11/(200.4+0.2*symrand());
   
    k13=k13/(20.4+0.2*symrand());
    k15=k15/(20.4+0.2*symrand());
    k17=k17/(20.4+0.2*symrand());
    
    kd2=1/30;
    kd3=1/20;

    
    ks2=ks2/2;
    ks3=ks3/2;

    
    k8=k8/(2+0.01*symrand());
    k10=k10/(2+0.01*symrand());
    k12=k12/(2+0.01*symrand());

    k14=k14/(6+0.5*symrand());
    k16=k16/(6+0.3*symrand());
    k18=k18/(6+0.4*symrand());

    k20=k20/(8+0.5*symrand());
    k22=k22/(8+0.3*symrand());
    k24=k24/(8+0.4*symrand());
    
        
 
    g2=g2*1.5;
    g1=g1/1.2;
    

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(11)=sum(ECtemp)/Nrep;
Erev(11)=sum(Etemp)/Nrep;
Imax(11)=sum(Itemp)/Nrep;
tauoff(11)=sum(tautemp)/Nrep;

vEC(11)=std(ECtemp)/sqrt(Nrep);
vErev(11)=std(Etemp)/sqrt(Nrep);
vImax(11)=std(Itemp)/sqrt(Nrep);
vtau(11)=std(tautemp)/sqrt(Nrep);


%I333A
for j=1:Nrep
 
    model.setParams(x);


    L13=L13/2;
    L14=L14/2;


    L42=L42/2.2;
    L43=L43/2.2;
    L44=L44/2.2;
    
    L32=L32*2.5;
    L33=L33*2.5;
    L34=L34*2.5;

 
    k2=k2*(2+0.05*symrand());
    k4=k4*(2+0.05*symrand());
    k6=k6*(2+0.05*symrand());
% 
    k7=k7/(40.4+0.2*symrand());
    k9=k9/(40.4+0.2*symrand());
    k11=k11/(40.4+0.2*symrand());
%    
    k13=k13/(12.4+0.2*symrand());
    k15=k15/(12.4+0.2*symrand());
    k17=k17/(12.4+0.2*symrand());
%     
    kd2=1/30;

    
    k8=k8/(4+0.01*symrand());
    k10=k10/(4+0.01*symrand());
    k12=k12/(4+0.01*symrand());

    k14=k14/(6+0.5*symrand());
    k16=k16/(6+0.3*symrand());
    k18=k18/(6+0.4*symrand());

    k20=k20/(6+0.5*symrand());
    k22=k22/(6+0.3*symrand());
    k24=k24/(6+0.4*symrand());
    
        
 
   
    g1=g1/1.4;
    

 
          
 
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(12)=sum(ECtemp)/Nrep;
Erev(12)=sum(Etemp)/Nrep;
Imax(12)=sum(Itemp)/Nrep;
tauoff(12)=sum(tautemp)/Nrep;


vEC(12)=std(ECtemp)/sqrt(Nrep);
vErev(12)=std(Etemp)/sqrt(Nrep);
vImax(12)=std(Itemp)/sqrt(Nrep);
vtau(12)=std(tautemp)/sqrt(Nrep);



% 
% 
%G45A
for j=1:Nrep
 
    model.setParams(x);

% 
    L11=L11/150;
    L12=L12/150;
    L13=L13/150;
    L14=L14/150;

    L21=L21/1.3;
    L22=L22/2;
    L23=L23/3;
    L24=L24/4;
%     
    L31=L31/5;
    L32=L32/5;
    L33=L33/5;
    L34=L34/5;
% 
% 
    L41=L41*2.5;
    L42=L42*6;
    L43=L43*6;
    L44=L44*6;
    

    k2=k2/(2.2+0.05*symrand());
    k4=k4/(2.2+0.05*symrand());
    k6=k6/(2.2+0.05*symrand());

    k9=k9/(1.5+0.2*symrand());
    k11=k11/(1.5+0.2*symrand());


    k15=k15/(1.5+0.1*symrand());
    k17=k17/(1.5+0.1*symrand());

    kd2=kd2/10;
    ks2=ks2/10;
    kd3=kd3/10;
    ks3=ks3/10;
    kd4=kd4/10;
    ks4=ks4/10;

    g2=g2/0.9;
    
    

    [ECtemp(j),Etemp(i),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(13)=sum(ECtemp)/Nrep;
Erev(13)=sum(Etemp)/Nrep;
Imax(13)=sum(Itemp)/Nrep;
tauoff(13)=sum(tautemp)/Nrep;

vEC(13)=std(ECtemp)/sqrt(Nrep);
vErev(13)=std(Etemp)/sqrt(Nrep);
vImax(13)=std(Itemp)/sqrt(Nrep);
vtau(13)=std(tautemp)/sqrt(Nrep);

%E51A
for j=1:Nrep
 
    model.setParams(x);


    L31=L31*10000;

    L32=L32/100;
    L33=L33/100;
    L34=L34/100;
    
    L41=L41/1.6;
    L44=L44*2.5;
    L43=L43*2.5;

    k2=k2*(1.15+0.05*symrand());
    k4=k4*(1.15+0.05*symrand());
    k6=k6*(1.15+0.05*symrand());

    k8=k8/(2+0.02*symrand());
    k10=k10/(2+0.02*symrand());
    k12=k12/(2+0.02*symrand());
    
    k7=k7/(4+0.02*symrand());
    k9=k9/(4+0.02*symrand());
    k11=k11/(4+0.02*symrand());

    k13=k13/(2+0.02*symrand());
    k15=k15/(2+0.02*symrand());
    k17=k17/(2+0.02*symrand());

%     kd2=1/30;
    kd3=1/50;
    kd4=1/52;
    
     ks2=ks2/2;
    ks3=ks3/20;
%     ks4=ks4/2;
    
    g2=g2*1.7;
    g1=g1/2;
    

    
    [ECtemp(j),Etemp(i),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end
EC(14)=sum(ECtemp)/Nrep;
Erev(14)=sum(Etemp)/Nrep;
Imax(14)=sum(Itemp)/Nrep;
tauoff(14)=sum(tautemp)/Nrep;

vEC(14)=std(ECtemp)/sqrt(Nrep);
vErev(14)=std(Etemp)/sqrt(Nrep);
vImax(14)=std(Itemp)/sqrt(Nrep);
vtau(14)=std(tautemp)/sqrt(Nrep);


% M336A

for j=1:Nrep
    
 
    model.setParams(x);

    L22=L22/2;
    L23=L23/3;
    L24=L24/4;
    
    L11=L11/10;
    L12=L12/10;
    L13=L13/100;
    L14=L14/100;
    
    L41=L41*2;
    L42=L42*3;
    L44=L44*3;
    L43=L43*3;
    
    L31=L31/10;
    L32=L32/10;
    L33=L33/100;
    L34=L34/100;

    k2=k2*(1.6+0.05*symrand());
    k4=k4*(1.6+0.05*symrand());
    k6=k6*(1.6+0.05*symrand());

    k7=k7/(2.2+0.05*symrand());
    k9=k9/(2.2+0.05*symrand());
    k11=k11/(2.2+0.05*symrand());

    k13=k13/(2.5+0.05*symrand());
    k15=k15/(2.5+0.05*symrand());
    k17=k17/(2.5+0.05*symrand());


    k19=k19/(2.4+0.05*symrand());
    k21=k21/(2.4+0.05*symrand());
    k23=k23/(2.4+0.05*symrand());
    
    kd3=kd3/2;
    ks3=ks3/2;
   
    g2=g2*1.6;
    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);

end
EC(15)=sum(ECtemp)/Nrep;
Erev(15)=sum(Etemp)/Nrep;
Imax(15)=sum(Itemp)/Nrep;
tauoff(15)=sum(tautemp)/Nrep;

vEC(15)=std(ECtemp)/sqrt(Nrep);
vErev(15)=std(Etemp)/sqrt(Nrep);
vImax(15)=std(Itemp)/sqrt(Nrep);
vtau(15)=std(tautemp)/sqrt(Nrep);


% T335A 

for j=1:Nrep
    
 
    model.setParams(x);

    L22=L22/2;
    L23=L23/3;
    L24=L24/4;
    
    L11=L11/10;
    L12=L12/10;
    L13=L13/100;
    L14=L14/100;
    
    L41=L41*3;
    L42=L42*3;
    L44=L44*3;
    L43=L43*3;
    
    L31=L31/10;
    L32=L32/10;
    L33=L33/100;
    L34=L34/100;

    k2=k2*(2+0.05*symrand());
    k4=k4*(2+0.05*symrand());
    k6=k6*(2+0.05*symrand());

    k7=k7/(1.2+0.05*symrand());
    k9=k9/(1.2+0.05*symrand());
    k11=k11/(1.2+0.05*symrand());

    k13=k13/(1.4+0.05*symrand());
    k15=k15/(1.4+0.05*symrand());
    k17=k17/(1.4+0.05*symrand());

    kd3=kd3/1.2;
    ks3=ks3/1.2;
   
    g2=g2*1.35;
    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);

end
EC(16)=sum(ECtemp)/Nrep;
Erev(16)=sum(Etemp)/Nrep;
Imax(16)=sum(Itemp)/Nrep;
tauoff(16)=sum(tautemp)/Nrep;

vEC(16)=std(ECtemp)/sqrt(Nrep);
vErev(16)=std(Etemp)/sqrt(Nrep);
vImax(16)=std(Itemp)/sqrt(Nrep);
vtau(16)=std(tautemp)/sqrt(Nrep);

% F48A
for j=1:Nrep
     
        model.setParams(x);
%         
  

    L41=L41*1.5;
    
    L31=L31/1.5;
    L32=L32/1.5;
    L33=L33/1.5;
    L34=L34/1.5;
    
    k2=k2*(2+0.1*symrand());
    k4=k4*(2+0.1*symrand());
    k6=k6*(2+0.1*symrand());
    
   
    k8=k8/(2+0.1*symrand());
    k10=k10/(2+0.1*symrand());
    k12=k12/(2+0.1*symrand());
     
    kd2=kd2/2;
    kd3=kd3/2;
 
    k9=k9/(1.4+0.1*symrand());
    k11=k11/(1.4+0.1*symrand());
    
    g2=g2*1.2;
    
    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end

EC(17)=sum(ECtemp)/Nrep;
Erev(17)=sum(Etemp)/Nrep;
Imax(17)=sum(Itemp)/Nrep;
tauoff(17)=sum(tautemp)/Nrep;
% 
vEC(17)=std(ECtemp)/sqrt(Nrep);
vErev(17)=std(Etemp)/sqrt(Nrep);
vImax(17)=std(Itemp)/sqrt(Nrep);
vtau(17)=std(tautemp)/sqrt(Nrep);
% 
% 
% 
% N338A
for j=1:Nrep
     
        model.setParams(x);
    
    L11=L11*1.5;
    L12=L12*3;
    L13=L13*3;
    L14=L14*3;

    L31=L31*1.5;
    L32=L32*3;
    L33=L33*3;
    L34=L34*3;


    k2=k2/(1.4+0.05*symrand());
    k4=k4/(1.4+0.05*symrand());
    k6=k6/(1.4+0.05*symrand());

    k20=k20/(4+0.3*symrand());
    k22=k22/(4+0.3*symrand());
    k24=k24/(4+0.3*symrand());
    
    k18=k18/(4+0.2*symrand());
    k16=k16/(4+0.2*symrand());
    k14=k14/(4+0.2*symrand());

    k8=k8/(2+0.1*symrand());
    k10=k10/(2+0.1*symrand());
    k12=k12/(2+0.1*symrand());

    k9=k9*(5.5+0.2*symrand());
    k11=k11*(5.5+0.2*symrand());
    k15=k15*(15);
    k17=k17*(15);
   
    g1=g1*1.2;
      
 
      [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end
EC(18)=sum(ECtemp)/Nrep;
Erev(18)=sum(Etemp)/Nrep;
Imax(18)=sum(Itemp)/Nrep;
tauoff(18)=sum(tautemp)/Nrep;

vEC(18)=std(ECtemp)/sqrt(Nrep);
vErev(18)=std(Etemp)/sqrt(Nrep);
vImax(18)=std(Itemp)/sqrt(Nrep);
vtau(18)=std(tautemp)/sqrt(Nrep);

%D58A
for j=1:Nrep
 
    model.setParams(x);
    
    L42=L42/1.8;
    L43=L43/1.8;
    L44=L44/1.8;

    
    k9=k9*(2.4+0.2*symrand());
    k11=k11*(2.4+0.2*symrand());
    k15=k15*(14+symrand());
    k17=k17*(14+symrand());
    k21=k21*(6+2*symrand());
    k23=k23*(6+2*symrand());
    

    g1=g1/2.5;
    g2=g2*1.8;

    [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
end
EC(19)=sum(ECtemp)/Nrep;
Erev(19)=sum(Etemp)/Nrep;
Imax(19)=sum(Itemp)/Nrep;
tauoff(19)=sum(tautemp)/Nrep;

vEC(19)=std(ECtemp)/sqrt(Nrep);
vErev(19)=std(Etemp)/sqrt(Nrep);
vImax(19)=std(Itemp)/sqrt(Nrep);
vtau(19)=std(tautemp)/sqrt(Nrep);

end

