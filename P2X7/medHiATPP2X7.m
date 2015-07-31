function [t,rec] = medHiP2X7(ton,toff,ttot)




taude=1+0.05*randn();
tauact=min(0.45,max(normrnd(0.3,0.05),0.25));
ampfast=1660+400*randn();
ampslow=2340+500*randn();
ampnipple=480+20*randn();

thold=toff-ton;

if nargin==2
    ttot=2*thold+ton;
end


dt=0.5;

tfast=1;

t1=(dt:dt:thold-tfast);
t2=(dt:dt:ttot-toff);
dtfast=0.05;

tslow=ton+tfast;



t=[0,ton:dtfast:tslow,t1+tslow,t2+toff];
rec=zeros(length(t),1);
rec(t>=ton&t<=tslow)=-ampfast*(1-decay(1,tauact,1,dtfast));
rec(t>tslow&t<=toff)=ampnipple*(1-exp(-t1/2))-ampslow*(1-exp(-t1/6))-ampfast;
rec(t>toff)=rec(t==toff)*(exp(-t2/taude));


end

