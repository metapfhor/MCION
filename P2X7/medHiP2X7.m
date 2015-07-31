function [t,rec] = medHiP2X7(ton,toff,ttot)




taude=6+0.5*randn();
tauact=min(0.25,max(normrnd(0.2,0.05),0.15));
ampfast=1300+100*randn();
ampslow=1800+100*randn();
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

