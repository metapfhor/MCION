function h = plotNaiveResponse(experiment,model)
    
    model.setParams([]);
    setGlobals(experiment.globals);
    
    [T,I,Y]=P2X4response(experiment,model);
    ton=experiment.conditions{1};
    toff=experiment.conditions{2};
    %     subplot(2,1,1);
    resp={};
    ind=T>=toff(3)&T<ton(4);
    resp{1}=T(ind)-toff(3);
    resp{2}=I(ind)/abs(min(I(ind)));
    ind=T>=toff(4)&T<ton(5);
    resp{3}=T(ind)-toff(4);
    resp{4}=I(ind)/abs(min(I(ind)));
    ind=T>=toff(5)&T<ton(6);
    resp{5}=T(ind)-toff(5);
    resp{6}=I(ind)/abs(min(I(ind)));
    ind=T>=toff(6)&T<ton(7);
    resp{7}=T(ind)-toff(6);
    resp{8}=I(ind)/abs(min(I(ind)));
    ind=T>=toff(7)&T<ton(8);
    resp{9}=T(ind)-toff(7);
    resp{10}=I(ind)/abs(min(I(ind)));
    ind=T>=toff(8)&T<ton(9);
    resp{11}=T(ind)-toff(8);
    resp{12}=I(ind)/abs(min(I(ind)));



        
    h=plot(resp{:});%Change the multiplier on I to the heterogeneity parameter.
    legend('1','2','3','4','5','6');
    set(h,'linewidth',2);

	labelPlot('Time (s)','Current (Normalized)',18);

end