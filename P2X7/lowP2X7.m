function [t,rec] = lowP2X7(ton,toff,ttot)


if nargin==2
    thold=toff-ton;
    ttot=2*thold+ton;
end
t=(0:5:ttot).';


tauact=12+1*randn();
taude=40+2*randn();
amp=36+3*randn();


rec=zeros(length(t),1);

rec(t>ton&t<=toff)=-amp*(1-exp(-(t(t>ton&t<=toff)-ton)/tauact));
rec(t>toff)=-rec(t==toff)*(1-exp(-(t(t>toff)-toff)/taude))+rec(t==toff);



end

