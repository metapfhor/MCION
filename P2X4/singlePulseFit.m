function [Aact,tauact,Adeact,taudeact] = singlePulseFit(Tact,Iact,Tdeact,Ideact)

Aact=Iact(end)-Iact(1);
Adeact=Ideact(end)-Ideact(1);

Tact=Tact-Tact(1);
Iact=Iact-min(Iact);




fact=fit(Tact,Iact,'exp1');
foo=coeffvalues(fact);
tauact=-1/foo(2);

hold off
cf(1);plot(fact,Tact,Iact);

Tdeact=Tdeact-Tdeact(1);
Ideact=Ideact-max(Ideact);

fdeact=fit(Tdeact,Ideact,'exp1');
foo=coeffvalues(fdeact);
taudeact=-1/foo(2);

cf(2);plot(fdeact,Tdeact,Ideact);
drawnow;

end

