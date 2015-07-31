global exp1  exp3 exp10 exp32 exp100 

exp1.conditions={5,125,145};
exp1.globals=struct('A',3.2*10^-6,'V',-60*10^-3,'C',0);
exp1.activation.conditions={5,66,7};
exp1.activation.globals=exp1.globals;


exp1.func=@() veryLowATPP2X7(exp1.conditions{:});
exp1.activation.func=@() veryLowP2X7(exp1.activation.conditions{:});

exp3.conditions={5,125,145};
exp3.globals=struct('ATP',0.3*10^-6,'A',0.3*10^-6,'V',-60*10^-3,'C',0);
exp3.globals=struct('A',10^-5,'V',-60*10^-3,'C',0);

exp3.func=@() lowATPP2X7(exp3.conditions{:});
exp3.activation.func=@() lowP2X7(exp3.activation.conditions{:});
exp3.activation.conditions={5,66,7};
exp3.activation.globals=exp3.globals;

exp3.func=@() lowATPP2X7(exp3.conditions{:});
exp3.activation.func=@() lowP2X7(exp3.activation.conditions{:});

exp10.conditions={5,126,146};
exp10.globals=struct('ATP',1*10^-6,'A',1*10^-6,'V',-60*10^-3,'C',0);
exp10.globals=struct('A',3.2*10^-5,'V',-60*10^-3,'C',0);
exp10.activation.conditions={5,66,7};
exp10.activation.globals=exp10.globals;

exp10.func=@() medATPP2X7(exp10.conditions{:});
exp10.activation.func=@() medP2X7(exp10.activation.conditions{:});

exp32.conditions={5,126,146};
exp32.globals=struct('ATP',3*10^-6,'A',3*10^-6,'V',-60*10^-3,'C',0);
exp32.globals=struct('A',10^-4,'V',-60*10^-3,'C',0);
exp32.activation.conditions={5,46,6.5};
exp32.activation.globals=exp32.globals;

exp32.func=@() medHiATPP2X7(exp32.conditions{:});
exp32.activation.func=@() medHiP2X7(exp32.activation.conditions{:});

exp100.conditions={5,46,87};
exp100.globals=struct('A',3.2*10^-4,'V',-60*10^-3,'C',0);
exp100.activation.conditions={5,46,6};
exp100.activation.globals=exp100.globals;

exp100.func=@() hiATPP2X7(exp100.conditions{:});
exp100.activation.func=@() hiP2X7(exp100.activation.conditions{:});

Nrec=10^4;

[t,I]=veryLowATPP2X7(exp1.conditions{1},exp1.conditions{2},exp1.conditions{3});
n1=length(t);
exp1.data=zeros(n1,2,Nrec);
n1act=length(t(t>=exp1.activation.conditions{1}&t<=exp1.activation.conditions{3}));
exp1.activation.data=zeros(n1act,2,Nrec);


[t,I]=lowATPP2X7(exp3.conditions{1},exp3.conditions{2},exp3.conditions{3});
n3=length(t);
exp3.data=zeros(n3,2,Nrec);
n3act=length(t(t>=exp3.activation.conditions{1}&t<=exp3.activation.conditions{3}));
exp3.activation.data=zeros(n3act,2,Nrec);



[t,I]=medATPP2X7(exp10.conditions{1},exp10.conditions{2},exp10.conditions{3});
n10=length(t);
exp10.data=zeros(n10,2,Nrec);
n10act=length(t(t>=exp10.activation.conditions{1}&t<=exp10.activation.conditions{3}));
exp10.activation.data=zeros(n10act,2,Nrec);



[t,I]=medHiATPP2X7(exp32.conditions{1},exp32.conditions{2},exp32.conditions{3});
n32=length(t);
exp32.data=zeros(n32,2,Nrec);
n32act=length(t(t>=exp32.activation.conditions{1}&t<=exp32.activation.conditions{3}));
exp32.activation.data=zeros(n32act,2,Nrec);


[t,I]=hiATPP2X7(exp100.conditions{1},exp100.conditions{2},exp100.conditions{3});
n100=length(t);
exp100.data=zeros(n100,2,Nrec);
n100act=length(t(t>=exp100.activation.conditions{1}&t<=exp100.activation.conditions{3}));
exp100.activation.data=zeros(n100act,2,Nrec);


for i=1:Nrec
    
    [t,I]=veryLowATPP2X7(exp1.conditions{1},exp1.conditions{2},exp1.conditions{3});
    exp1.data(:,1,i)=t;
    exp1.data(:,2,i)=I;
    actInd=t>=exp1.activation.conditions{1}&t<=exp1.activation.conditions{3};
    exp1.activation.data(:,1,i)=t(actInd);
    exp1.activation.data(:,2,i)=I(actInd);
   
    
    [t,I]=lowATPP2X7(exp3.conditions{1},exp3.conditions{2},exp3.conditions{3});
    exp3.data(:,1,i)=t;
    exp3.data(:,2,i)=I;
    actInd=t>=exp3.activation.conditions{1}&t<=exp3.activation.conditions{3};
    exp3.activation.data(:,1,i)=t(actInd);
    exp3.activation.data(:,2,i)=I(actInd);
    
    [t,I]=medATPP2X7(exp10.conditions{1},exp10.conditions{2},exp10.conditions{3});
    exp10.data(:,1,i)=t;
    exp10.data(:,2,i)=I;
    actInd=t>=exp10.activation.conditions{1}&t<=exp10.activation.conditions{3};
    exp10.activation.data(:,1,i)=t(actInd);
    exp10.activation.data(:,2,i)=I(actInd);
    
    
    [t,I]=medHiATPP2X7(exp32.conditions{1},exp32.conditions{2},exp32.conditions{3});
    exp32.data(:,1,i)=t;
    exp32.data(:,2,i)=I;
    actInd=t>=exp32.activation.conditions{1}&t<=exp32.activation.conditions{3};
    exp32.activation.data(:,1,i)=t(actInd);
    exp32.activation.data(:,2,i)=I(actInd);
    
    
    
    [t,I]=hiATPP2X7(exp100.conditions{1},exp100.conditions{2},exp100.conditions{3});
    exp100.data(:,1,i)=t;
    exp100.data(:,2,i)=I;
    actInd=t>=exp100.activation.conditions{1}&t<=exp100.activation.conditions{3};
    exp100.activation.data(:,1,i)=t(actInd);
    exp100.activation.data(:,2,i)=I(actInd);
    
end


sigs=squeeze(exp1.data(:,2,:));
exp1.mean=mean(sigs,2);
exp1.var=var(sigs,1,2);
sigs=squeeze(exp1.activation.data(:,2,:));
exp1.activation.mean=mean(sigs,2);
exp1.activation.var=var(sigs,1,2);


sigs=squeeze(exp3.data(:,2,:));
exp3.mean=mean(sigs,2);
exp3.var=var(sigs,1,2);
sigs=squeeze(exp3.activation.data(:,2,:));
exp3.activation.mean=mean(sigs,2);
exp3.activation.var=var(sigs,1,2);


sigs=squeeze(exp10.data(:,2,:));
exp10.mean=mean(sigs,2);
exp10.var=var(sigs,1,2);
sigs=squeeze(exp10.activation.data(:,2,:));
exp10.activation.mean=mean(sigs,2);
exp10.activation.var=var(sigs,1,2);




sigs=squeeze(exp32.data(:,2,:));
exp32.mean=mean(sigs,2);
exp32.var=var(sigs,1,2);
sigs=squeeze(exp32.activation.data(:,2,:));
exp32.activation.mean=mean(sigs,2);
exp32.activation.var=var(sigs,1,2);


sigs=squeeze(exp100.data(:,2,:));
exp100.mean=mean(sigs,2);
exp100.var=var(sigs,1,2);
sigs=squeeze(exp100.activation.data(:,2,:));
exp100.activation.mean=mean(sigs,2);
exp100.activation.var=var(sigs,1,2);


cf(9);

T=100;
T2=T*T;


subplot(2,5,1)


plotPointwiseProbability(exp1.data(:,1,1),exp1.mean,exp1.var);
title('1 uM Likelihood (with variance)');
subplot(2,5,6)


plotPointwiseProbability(exp1.data(:,1,1),exp1.mean,ones(size(exp1.var))*T2);
title('1 uM SSE Likelihood');


subplot(2,5,2)


plotPointwiseProbability(exp3.data(:,1,1),exp3.mean,exp3.var);
title('3 uM Likelihood (with variance)');
subplot(2,5,7)



plotPointwiseProbability(exp3.data(:,1,1),exp3.mean,ones(size(exp3.var))*T2);
title('3 uM SSE Likelihood');



subplot(2,5,3)


plotPointwiseProbability(exp10.data(:,1,1),exp10.mean,exp10.var);
title('10 uM Likelihood (with variance)');
subplot(2,5,8)



plotPointwiseProbability(exp10.data(:,1,1),exp10.mean,ones(size(exp10.var))*T2);
title('10 uM SSE Likelihood');



subplot(2,5,4)


plotPointwiseProbability(exp32.data(:,1,1),exp32.mean,exp32.var);
title('32 uM Likelihood (with variance)');

subplot(2,5,9)




plotPointwiseProbability(exp32.data(:,1,1),exp32.mean,ones(size(exp32.var))*T2);
title('32 uM SSE Likelihood');


subplot(2,5,5)


plotPointwiseProbability(exp100.data(:,1,1),exp100.mean,exp100.var);
title('100 uM Likelihood (with variance)');

subplot(2,5,10)

plotPointwiseProbability(exp100.data(:,1,1),exp100.mean,ones(size(exp100.var))*T2);

title('100 uM SSE Likelihood');
%tightfig(gcf);
