function [t,rec] = veryLowP2X7(ton,toff,ttot)


if nargin==2
    thold=toff-ton;
    ttot=2*thold+ton;
end
% tclosed=unifrnd(0.6,1.1);
topen=ton;
dt=1;

t=[0,topen:dt:toff-dt,toff:dt:ttot].';


tauact=0.4+.01*randn();
taude=1+0.1*randn();
amp=20+4*randn();

nfast=20;


tfaston=ton+2;
tfastoff=toff+2;

t=[0,ton,logspace(log10(ton+2/nfast),log10(tfaston),nfast),tfaston+dt:dt:toff-dt,toff,logspace(log10(toff+2/nfast),log10(tfastoff),nfast),tfastoff+dt:dt:ttot].';

rec=zeros(length(t),1);
%rec(t==topen)=-unifrnd(0.1,0.5);
rec(t>=topen&t<=toff)=(-amp*(1-exp(-(t(t>=topen&t<=toff)-topen)/tauact)));%+rec(t==topen);
rec(t>toff)=-rec(t==toff)*(1-exp(-(t(t>toff)-toff)/taude))+rec(t==toff);



end

