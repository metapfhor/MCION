T=pulse03IVMG45A.data(:,1);
I=pulse03IVMG45A.data(:,2);
I=I-max(I);

cf(754);plot(T,I)


[Iw(1),ind]=min(I(T>555&T<560));
Tw(1)=555+T(ind+1);

ind=T>Tw(1)+5&T<672.8;
I1=I(ind);
I1=I1-I1(end);
T1=T(ind);
T1=T1-T1(1);

f1=fit(T1,I1,'exp1');


cf(654);plot(f1,T1,I1);

[Iw(2),ind]=min(I(T>670&T<675));
Tw(2)=670+T(ind);   

[Iw(3),ind]=min(I(T>790&T<795));
Tw(3)=790+T(ind);   

[Iw(4),ind]=min(I(T>905&T<915));
Tw(4)=905+T(ind);   

[Iw(5),ind]=min(I(T>1025&T<1030));
Tw(5)=1025+T(ind);   

ind=T>1028.4&T<1067;
I5=I(ind);
I5=I5-I5(end);
T5=T(ind);
T5=T5-T5(1);

exp1=@(a,b,x) a*exp(b*x);

f5=fit(T5,I5,exp1,'StartPoint',[-690,-0.37]);

cf(655);plot(f5,T5,I5);

return;

cf(168);plot(T,I,Tw,Iw);

f=fit(Tw.',Iw.','poly1');

plot(T,I,Tw,f(Tw));


