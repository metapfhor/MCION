function [t,rec] = veryLowP2X7(ton,toff,ttot)


if nargin==2
    thold=toff-ton;
    ttot=2*thold+ton;
end
% tclosed=unifrnd(0.6,1.1);
topen=ton;
dt=1;
t=[0,topen:dt:toff-dt,toff:dt:ttot].';


tauact=17+1*randn();
taude=45+7*randn();
amp=18+2*randn();

rec=zeros(length(t),1);
%rec(t==topen)=-unifrnd(0.1,0.5);
rec(t>topen&t<=toff)=(-amp*(1-exp(-(t(t>topen&t<=toff)-topen)/tauact)));%+rec(t==topen);
rec(t>toff)=-rec(t==toff)*(1-exp(-(t(t>toff)-toff)/taude))+rec(t==toff);



end

