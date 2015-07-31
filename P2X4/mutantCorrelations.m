function [EC,Erev,Imax,tauoff] = mutantCorrelations(xxp,model)
global L21 L22 L23 L24 k9 k15 k21 k23
X=unravelChain(xxp);
f=chainUnifSampler(X);

Nrep=4;
Nclone=19;


EC=zeros(Nclone,1);
ECtemp=zeros(Nrep,1);

Erev=zeros(Nclone,1);
Etemp=zeros(Nrep,1);

Imax=zeros(Nclone,1);
Itemp=zeros(Nrep,1);

tauoff=zeros(Nclone,1);
tautemp=zeros(Nrep,1);


for i=1:Nrep
    model.setParams(f());
    [ECtemp(i),Etemp(i),Itemp(i),tautemp(i)]=correlationMeasurement(model);
end
EC(1)=sum(ECtemp)/Nrep;
Erev(1)=sum(Etemp)/Nrep;
Imax(1)=sum(Itemp)/Nrep;
tauoff(1)=sum(tautemp)/Nrep;

for i=2:12
    for j=1:Nrep
        x=f();
        model.setParams(x);
        
        L21=L21*0.6;
        L22=L22*0.6;
        L23=L23*0.6;
        L24=L24*0.6;
        
        k9=(1.4+0.2*symrand())*k9;
        k15=(6+symrand())*k15;
        k21=(10+2*symrand())*k21;
        k23=(10+2*symrand())*k23;
        

        [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
    end
    EC(i)=sum(ECtemp)/Nrep;
    Erev(i)=sum(Etemp)/Nrep;
    Imax(i)=sum(Itemp)/Nrep;
    tauoff(i)=sum(tautemp)/Nrep;
end


for i=13:14
    for j=1:Nrep
        x=f();
        model.setParams(x);
        
        L21=L21*1.6;
        L22=L22*1.6;
        L23=L23*1.6;
        L24=L24*1.6;
        
        k9=k9/(1.4+0.2*symrand());
        k15=k15/(6+symrand());
        k21=k21/(10+2*symrand());
        k23=k23/(10+2*symrand());
        
 
        [ECtemp(j),Etemp(i),Itemp(j),tautemp(j)]=correlationMeasurement(model);
    end
    EC(i)=sum(ECtemp)/Nrep;
    Erev(i)=sum(Etemp)/Nrep;
    Imax(i)=sum(Itemp)/Nrep;
    tauoff(i)=sum(tautemp)/Nrep;
end

for i=15:16
    for j=1:Nrep
        x=f();
        model.setParams(x);
        

        k9=k9/(1.4+0.2*symrand());
        k15=k15/(6+symrand());
        k21=k21/(10+2*symrand());
        k23=k23/(10+2*symrand());
        
 
        [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
    end
    EC(i)=sum(ECtemp)/Nrep;
    Erev(i)=sum(Etemp)/Nrep;
    Imax(i)=sum(Itemp)/Nrep;
    tauoff(i)=sum(tautemp)/Nrep;
end

for i=17:19
    for j=1:Nrep
        x=f();
        model.setParams(x);
        

        k9=k9*(1.4+0.2*symrand());
        k15=k15*(6+symrand());
        k21=k21*(10+2*symrand());
        k23=k23*(10+2*symrand());
        
 
        [ECtemp(j),Etemp(j),Itemp(j),tautemp(j)]=correlationMeasurement(model);
    end
    EC(i)=sum(ECtemp)/Nrep;
    Erev(i)=sum(Etemp)/Nrep;
    Imax(i)=sum(Itemp)/Nrep;
    tauoff(i)=sum(tautemp)/Nrep;
end


end

