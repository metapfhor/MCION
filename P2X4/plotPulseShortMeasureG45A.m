function h = plotPulseShortMeasureG45A(experiment,model)
    
    model.setParams([]);



    ton=[10,130,200,320:120:1400];
    toff=ton+4;
        
    experiment.conditions{2}=toff;
    experiment.globals.IVMoff=toff(8);
    setGlobals(experiment.globals);
    [T,I,Y]=P2X4response(experiment,model);
    
    cf(11);plot(T,I)
    ton=experiment.conditions{1};
    toff=experiment.conditions{2};
    %     subplot(2,1,1);
    twait=6;
    resp={};
    Tmax={};
    Mdes={};
    legstr={};
    for i=1:2
        ind=T>=ton(i)&T<ton(i)+twait;
        Icurr=I(ind);
        Icurr=Icurr-Icurr(1);
        Tcurr=T(ind);
        [Imax,indMax]=min(Icurr);
        Imax=abs(Imax);

        resp{3*i-2}=Tcurr-ton(i);
        resp{3*i-1}=Icurr/Imax;
        resp{3*i}='-k';
        


        Tmax{i}=Tcurr(indMax);
        indDes=ind&T>=Tmax{i}&T<toff(i);

        if sum(indDes)>=3
            Ides=I(indDes)/Imax;
            Tdes=T(indDes);
            Tdes=Tdes-Tdes(1);
            f=fit(Tdes,Ides,'poly1');

            Mdes{i}=f.p1;
        else
            Mdes{i}=0;
        end
        Tmax{i}=Tmax{i}-ton(i);
        if i==1
            legstr{i}=['IVM-, t_{max}=' num2str(Tmax{i},3) ', m_{des}=' num2str(Mdes{i},3) ];
        end
        
    end
    for i=3:7
        ind=T>=ton(i)&T<ton(i)+twait;
        Icurr=I(ind);
        Icurr=Icurr-Icurr(1);
        Tcurr=T(ind);
        [Imax,indMax]=min(Icurr);
        Imax=abs(Imax);

        resp{3*i-2}=Tcurr-ton(i);
        resp{3*i-1}=Icurr/Imax;
        resp{3*i}='-';
        


        Tmax{i}=Tcurr(indMax);
        indDes=ind&T>=Tmax{i}&T<toff(i);

        if sum(indDes)>=3
            Ides=I(indDes)/Imax;
            Tdes=T(indDes);
            Tdes=Tdes-Tdes(1);
            f=fit(Tdes,Ides,'poly1');

            Mdes{i}=f.p1;
        else
            Mdes{i}=0;
        end
        Tmax{i}=Tmax{i}-ton(i);
     
        legstr{i-1}=['IVM(+' num2str(i-2) '), t_{max}=' num2str(Tmax{i},3) ', m_{des}=' num2str(Mdes{i},3) ];
        
    end

    hold on;
    
    hk=plot(resp{1:6});
    set(hk,'LineWidth',3);
    
    
    hkg = hggroup;

    
    set(hk,'Parent',hkg)
%     set(hb,'Parent',hbg)
    % Include these hggroups in the legend:
    set(get(get(hkg,'Annotation'),'LegendInformation'),...
        'IconDisplayStyle','on'); 
    
    
    hb=plot(resp{7:end});
    set(hb,'LineWidth',3);



%     set(get(get(hbg,'Annotation'),'LegendInformation'),...
%         'IconDisplayStyle','on'); 

%    legend('IVM-','IVM+(1)','IVM+(2)','IVM+(3)','IVM+(4)','IVM+(5)','IVM+(6)')
% legend('IVM-','IVM+(1)','IVM+(2)','IVM+(3)','IVM+(4)','IVM+(5)')
legend(legstr{:})

    labelPlot('Time (s)','Current (normalized)',18)
    axis tight;
    drawnow;
end