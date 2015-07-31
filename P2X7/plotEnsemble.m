function plotEnsemble(Nplot)
subplot(1,5,1);
if nargin==0
    Nplot=10;
end
hold on

for i=1:Nplot

    [t,I]=veryLowP2X7(5,205,405);
    resp{2*i-1}=t;
    resp{2*i}=I;

end
    plot(resp{:});
    
    
subplot(1,5,2);
resp={};

for i=1:Nplot

    [t,I]=lowP2X7(5,205,405);
    resp{2*i-1}=t;
    resp{2*i}=I;

end
    plot(resp{:});
    
    
subplot(1,5,3);
resp={};

for i=1:Nplot

    [t,I]=medP2X7(5,40);
    resp{2*i-1}=t;
    resp{2*i}=I;

end
    plot(resp{:});
    
    subplot(1,5,4);
resp={};

for i=1:Nplot

    [t,I]=medHiP2X7(5,40);
    resp{2*i-1}=t;
    resp{2*i}=I;

end
    plot(resp{:});

subplot(1,5,5);
resp={};

for i=1:Nplot

    [t,I]=hiP2X7(5,40);
    resp{2*i-1}=t;
    resp{2*i}=I;

end
    plot(resp{:});


    tightfig(gcf)

end

