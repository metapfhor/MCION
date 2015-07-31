
function [t,rec] = medP2X7(ton,toff,ttot)

taude=1+0.1*randn();
tauact=min(0.35,max(normrnd(0.3,0.05),0.25));
ampfast=220+max(-40,120*randn());
ampslow=1100+200*randn();
ampnipple=1800+10*randn();

thold=toff-ton;

%tclosed=unifrnd(0.04,0.06);
topen=ton;%+tclosed;


dt=0.5;
dtfast=0.005;

tfast=min(2.7,max(normrnd(3.5,1),7));




tslow=topen+tfast;

t1=[tslow+dt:dt:toff-dt,toff]-tslow;
t2=(dt:dt:ttot-toff);

tauSlow=85+20*randn();
nippleLength=5+0.5*randn();

t=[0,topen,topen+dtfast:dtfast:tslow-dtfast,tslow,tslow+dt:dt:toff-dt,toff,t2+toff];
rec=zeros(length(t),1);
%rec(t==topen)=-unifrnd(5,35);
rec(t>=topen&t<=tslow)=-ampfast*(1-decay(1,tauact,tfast,dtfast));%+rec(t==topen);
% rec(t>tslow&t<=toff)=ampnipple*(1-exp(-t1/50))-ampslow*(1-exp(-t1/80))-ampfast;
rec(t>tslow&t<=toff)=(ampslow*(plateau(t1,nippleLength,tauSlow)-1))-ampfast;%ampnipple*(1-exp(-t1/50))-ampslow*(1-exp(-t1/80))-ampfast;
rec(t>toff)=rec(t==toff)*(exp(-t2/taude));


end

