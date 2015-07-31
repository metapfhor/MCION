function [t,rec] = hiP2X7(ton,toff,ttot)




taude=normrnd(6,0.5);
tauact=min(0.15,max(normrnd(0.1,0.05),0.05));
ampfast=normrnd(2500,200);
ampslow=normrnd(1000,200);
ampnipple=normrnd(140,20);


thold=toff-ton;

tclosed=unifrnd(0.02,0.04);
topen=ton;%+tclosed;

dt=0.5;

tfast=min(1,max(normrnd(2,0.5),3));
tslow=topen+tfast;

t1=[tslow+dt:dt:toff-dt,toff]-tslow;
t2=(dt:dt:ttot-toff);
dtfast=0.005;






% t=[0,ton,topen,topen+dtfast:dtfast:tslow-dtfast,tslow,tslow+dt:dt:toff-dt,toff,t2+toff];
% rec=zeros(length(t),1);
% rec(t>=topen&t<=tslow)=-ampfast*(1-decay(1,tauact,tfast,dtfast));
% rec(t>tslow&t<=toff)=ampnipple*(1-exp(-t1))-ampslow*(1-exp(-t1/8))-ampfast;
% rec(t>toff)=rec(t==toff)*(exp(-t2/taude));


t=[0,topen,topen+dtfast:dtfast:tslow-dtfast,tslow,tslow+dt:dt:toff-dt,toff,t2+toff];
rec=zeros(length(t),1);
%rec(t==topen)=-unifrnd(20,80);
rec(t>=topen&t<=tslow)=-ampfast*(1-decay(1,tauact,tfast,dtfast));%+rec(t==topen);
rec(t>tslow&t<=toff)=ampnipple*(1-exp(-t1))-ampslow*(1-exp(-t1))-ampfast;
rec(t>toff)=rec(t==toff)*(exp(-t2/taude));

end

