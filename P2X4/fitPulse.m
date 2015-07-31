function [T,I,V] = fitPulse(experiment)
    T=experiment.data(:,1);
    I=experiment.data(:,2);
    V=zeros(size(I));

    ton=experiment.conditions{1};
    toff=experiment.conditions{2};
    ttot=experiment.conditions{3};
    hold off
    for i=1:length(ton)-1

        act=T>=ton(i)&T<=toff(i);
        Tact=T(act);
        Iact=I(act);
        
        indact=find(act);
        inddeact=indact(end);
        indact=indact(1);

        deact=T>=toff(i)&T<ton(i+1)-0.5;
        Tdeact=T(deact);
        Ideact=I(deact);
        
       [Aact,tauact,Adeact,taudeact]=singlePulseFit(Tact,Iact,Tdeact,Ideact);
       
       I(act)=Aact*(1-exp(-(Tact-ton(i)/tauact)))+I(indact-1);
       I(deact)=-Adeact*exp(-(Tdeact-toff(i))/taudeact)+I(inddeact);
    end
        i=length(ton)
        act=T>=ton(i)&T<=toff(i);
        Tact=T(act);
        Iact=I(act);
        
        indact=find(act);
        inddeact=indact(end);
        indact=indact(1);

        deact=T>=toff(i)&T<ttot;
        Tdeact=T(deact);
        Ideact=I(deact);
        
       [Aact,tauact,Adeact,taudeact]=singlePulseFit(Tact,Iact,Tdeact,Ideact);
       
       I(act)=Aact*(1-exp(-(Tact-ton(i)/tauact)))+I(indact-1);
       I(deact)=Adeact*exp(-(Tdeact-toff(i))/taudeact)+I(inddeact);
end

