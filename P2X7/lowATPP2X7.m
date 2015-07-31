function [t,rec] = lowP2X7(ton,toff,ttot)


if nargin==2
    thold=toff-ton;
    ttot=2*thold+ton;
end
t=(0:0.05:ttot).';


tauact=0.36+0.02*randn();
taude=1+.2*randn();
amp=80+20*randn();

dt=1;
nfast=20;

tfaston=ton+2;
tfastoff=toff+2;

t=[0,ton,logspace(log10(ton+2/nfast),log10(tfaston),nfast),tfaston+dt:dt:toff-dt,toff,logspace(log10(toff+2/nfast),log10(tfastoff),nfast),tfastoff+dt:dt:ttot].';

rec=zeros(length(t),1);

rec(t>=ton&t<=toff)=-amp*(1-exp(-(t(t>=ton&t<=toff)-ton)/tauact));
rec(t>toff)=-rec(t==toff)*(1-exp(-(t(t>toff)-toff)/taude))+rec(t==toff);



end

