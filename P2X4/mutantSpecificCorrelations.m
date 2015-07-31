function [EC,Erev,Imax,tauoff] = mutantSpecificCorrelations(xxp,model)
global g2 g1 H2 L51 L52 L53 L54 L61 L62 L63 L64 L21 L22 L23 L24 L31 L32 L33 L34 L41 L42 L43 L44 k7 k9 k11 k13 k17 k19 k15 k21 k23 L11 L12 L13 L14 k2 k4 k6 k1 k3 k5 k8 k10 k12 k14 k16 k18 k20 k22 k24
X=unravelChain(xxp);
f=chainUnifSampler(X);

Nrep=1;
Nclone=19;


EC=zeros(Nclone,1);
vEC=zeros(size(EC));
ECtemp=zeros(Nrep,1);

Erev=zeros(Nclone,1);
vErev=zeros(size(Erev));
Etemp=zeros(Nrep,1);

Imax=zeros(Nclone,1);
vImax=zeros(size(Imax));
Itemp=zeros(Nrep,1);

tauoff=zeros(Nclone,1);
vtau=zeros(size(tauoff));
tautemp=zeros(Nrep,1);

% WT

for i=1:Nrep
    model.setParams(f());
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
% for i=2:5
%     for j=1:Nrep
%         x=f();
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

%I332A
for j=1:Nrep
    x=f();
    model.setParams(x);

    L21=L21*20;
    L22=L22*20;
    L23=L23*20;
    L24=L24*20;
    
    L11=L11/20;
    L12=L12/20;
    
    L13=L13/10;
    L14=L14/10;
    
 
    k5=k5/(1.8+0.1*symrand());
    k3=k3/(1.8+0.1*symrand());
    k1=k1/(1.8+0.1*symrand());


    k9=k9/(1.4+0.2*symrand());
    
    k8=k8/(5+0.5*symrand());
    k10=k10/(5+0.5*symrand());
    k12=k12/(6+0.5*symrand());
    
    k15=k15/(2+0.2*symrand());
    
    k14=k14/(10+0.5*symrand());
    k16=k16/(10+0.3*symrand());
    k18=k18/(10+0.4*symrand());
    
    
    
    k21=k21/(6+2*symrand());
    k23=k23/(6+2*symrand());
        
    k20=k20/(10+0.5*symrand());
    k22=k22/(10+0.3*symrand());
    k24=k24/(10+0.4*symrand());
 
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
    x=f();
    model.setParams(x);

    L21=L21*20;
    L22=L22*20;
    L23=L23*20;
    L24=L24*20;
    
    L11=L11/20;
    L12=L12/20;
    
    L13=L13/10;
    L14=L14/10;
    
     k9=k9/(1.4+0.02*symrand());
 
    k5=k5/(1.8+0.05*symrand());
    k3=k3/(1.8+0.05*symrand());
    k1=k1/(1.8+0.05*symrand());



    
    k8=k8/(5+0.5*symrand());
    k10=k10/(5+0.5*symrand());
    k12=k12/(5+0.5*symrand());
    
    k15=k15/(1.6+0.02*symrand());
    
    k14=k14/(7+0.5*symrand());
    k16=k16/(7+0.3*symrand());
    k18=k18/(7+0.4*symrand());
    
    
    k21=k21/(1.8+0.01*symrand());
    k23=k23/(1.8+0.01*symrand());

        
    k20=k20/(8+0.5*symrand());
    k22=k22/(8+0.3*symrand());
    k24=k24/(8+0.4*symrand());

    g2=g2/2.5;
    
 
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
    x=f();
    model.setParams(x);

%     
    L21=L21/1.2;
%     L22=L22/1.2;
    L11=L11/2.5;
    L12=L12/2.5;
    L23=L23/5;
    L24=L24/5;


    L13=L13/5;
    L14=L14/5;


    k4=k4*(2+0.1*symrand());
    k6=k6*(2+0.1*symrand());

    k7=k7/(1.4+0.2*symrand());
    k9=k9/(1.4+0.2*symrand());
    k11=k11/(1.4+0.2*symrand());

    k13=k13/(2+0.1*symrand());
    k15=k15/(2+0.1*symrand());
    k17=k17/(2+0.1*symrand());


    k19=k19/(3+0.2*symrand());
    k21=k21/(3+0.2*symrand());
    k23=k23/(3+0.2*symrand());
    

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
    x=f();
    model.setParams(x);

    
    L21=L21/2.1;
    L22=L22*34.7;
    L11=L11/600.5;
    L12=L12/600.5;
    L23=L23/30;
    L24=L24/30;
% 

    L13=L13/50;
    L14=L14/50;
    
    L31=L31/50;
    L32=L32/50;
    L33=L33/50;
    L34=L34/50;
%     
%         L53=L53/50;
%     L54=L54/50;
%     

    L51=L51/50;
    L52=L52/50;
    L53=L53/50;
    L54=L54/50;
    
    L41=L41*1500;
    
    L61=L61*100;
    L62=L62*100;
    L62=L63*100;
    L64=L64*100;
    
    L42=L42*35;
    L43=L43*35;
    L44=L44*35;

    k2=k2/(3.6+0.1*symrand());
    k4=k4/(3.6+0.1*symrand());
    k6=k6/(3.6+0.1*symrand());

    k8=k8/(15.8+0.1*symrand());
    k10=k10/(15.8+0.1*symrand());
    k12=k12/(15.8+0.1*symrand());

    
    k7=k7/(1.2+0.02*symrand());
    k9=k9/(1.2+0.02*symrand());
    k11=k11/(1.2+0.02*symrand());
    
    k14=k14*(53.8+0.1*symrand());
    k16=k16*(53.8+0.1*symrand());
    k18=k18*(53.8+0.1*symrand());

    k13=k13/(1.4+0.02*symrand());
    k15=k15/(1.4+0.02*symrand());
    k17=k17/(1.4+0.02*symrand());


    k19=k19*(121.6+0.03*symrand());
    k21=k21*(121.8+0.03*symrand());
    k23=k23*(121.8+0.03*symrand());

        k20=k20/(13.8+0.1*symrand());
    k22=k22/(13.8+0.1*symrand());
    k24=k24/(13.8+0.1*symrand());

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
    
    x=f();
    model.setParams(x);



    L21=L21/1.3;
    L11=L11/3.3;
    L22=L22/1.3;
    L12=L12/3.3;
    
    L23=L23/18;
    L24=L24/18;
    L13=L13/18;
    L14=L14/18;


    k4=k4/(1.6+0.05*symrand());
    k6=k6/(1.6+0.05*symrand());

    k7=k7/(1.9+0.05*symrand());
    k9=k9/(1.9+0.05*symrand());
    k11=k11/(1.9+0.05*symrand());

    k13=k13/(2.1+0.05*symrand());
    k15=k15/(2.1+0.05*symrand());
    k17=k17/(2.1+0.05*symrand());


    k19=k19/(2.4+0.05*symrand());
    k21=k21/(2.4+0.05*symrand());
    k23=k23/(2.4+0.05*symrand());
    
    

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
    
    x=f();
    model.setParams(x);


    L21=L21/1.15;
    L11=L11/5.3;
    L22=L22/1.15;
    L12=L12/5.3;
    
    L23=L23/6;
    L24=L24/8;
    L13=L13/6;
    L14=L14/8;


    k4=k4/(1.2+0.05*symrand());
    k6=k6/(1.2+0.05*symrand());

    k7=k7/(1.2+0.05*symrand());
    k9=k9/(1.2+0.05*symrand());
    k11=k11/(1.2+0.05*symrand());

    k13=k13/(1.4+0.05*symrand());
    k15=k15/(1.4+0.05*symrand());
    k17=k17/(1.4+0.05*symrand());


    k19=k19/(1.6+0.05*symrand());
    k21=k21/(1.6+0.05*symrand());
    k23=k23/(1.6+0.05*symrand());
    
    


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
        x=f();
        model.setParams(x);
        

    L21=L21*1.5;
    L22=L22*1.5;
    L23=L23/1.5;
    L24=L24/1.5;
    
    L13=L13/2;
    L14=L14/2;
    
    k4=k4*(3.8+0.1*symrand());
    k6=k6*(3.8+0.1*symrand());
    
        
    k8=k8*(4+symrand());
    k16=k16*(8+2*symrand());
    k22=k22*(15+3*symrand());
    k24=k24*(15+3*symrand());
%     
    k9=k9/(1.4+0.1*symrand());
    k15=k15/(1.4+0.1*symrand());
    k21=k21/(1.4+0.1*symrand());
    k23=k23/(1.4+0.1*symrand());


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
        x=f();
        model.setParams(x);
        

        

        L41=L41/1.5;
        L42=L42/1.5;
        L43=L43/1.5;
        L44=L44/1.5;

        L31=L31*4.5;
        L32=L32*4.5;
        L33=L33*4.5;
        L34=L34*4.5;
        
        k3=k3*(2+0.2*symrand());
        k5=k5*(2+0.2*symrand());
        
        
        
        k22=k22/(5+0.3*symrand());
        k24=k24/(10+0.3*symrand());
        k16=k16/(10+0.2*symrand());
        k8=k8/(10+0.1*symrand());
        
        
        k9=k9*(2+0.2*symrand());
        k11=k11*(2+0.2*symrand());
        k15=k15*(2);
        k21=k21*(2);
        k23=k23*(2);
    
 
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
    x=f();
    model.setParams(x);
    L21=L21*1.5;
    L22=L22*1.5;
    L23=L23/0.8;
    L24=L24/0.8;

    L11=L11/2;
    L12=L12/2;
    L13=L13/1.5;
    L14=L14/1.5;
    
    L41=L41/2;
    L42=L42/2;
    L43=L43/2;
    L44=L44/2;

    k9=k9*(1.4+0.2*symrand());
    k8=k8/(4+symrand());
    k15=k15*(4+symrand());
    k16=k16/(4+2*symrand());
    k21=k21*(6+2*symrand());
    k22=k22/(15+3*symrand());
    k23=k23*(6+2*symrand());
    k24=k24/(15+3*symrand());

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

