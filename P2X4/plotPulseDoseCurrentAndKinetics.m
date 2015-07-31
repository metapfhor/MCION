function plotPulseDoseCurrentAndKinetics(model)
 global pulse0IVM  pulse1IVM pulse3IVM  pulse10IVM
global taucurve semtaucurve Icurve semIcurve
fs=10;
    IVM=[0,0.3,1,3,6,10];
%     taudata=[0.2180,(1.1842-0.2180)*0.3+0.2180, 1.1842, 6.5193,3*(7.8272-6.5193)/7+6.5193,7.8272];
%     taucurve=[0.9,0.9,2.8,11.9,16.1,16.6];
%     taucurve=[0.42,0.54,1.8,12.1,16.7,16.9];
%     semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115];
%     Icurve=[293,611,2619,2754,2357,2222];
%     semIcurve=[56,87,793,587,643,730];




    
    subplot(4,2,1);
    plotPulsePanelCurr(pulse0IVM,model,1);
    set(gca,'XTick',[])
    annotatePlot('A',18);
    

    subplot(4,2,3);
    plotPulsePanelCurr(pulse1IVM,model,2);
    set(gca,'XTick',[])
    annotatePlot('B',18);
    


    subplot(4,2,5);
    plotPulsePanelCurr(pulse3IVM,model,3);
    set(gca,'XTick',[])    

    annotatePlot('C',18);

    subplot(4,2,7);
    plotPulsePanelCurr(pulse10IVM,model,4);
     labelPlot('Time (s)','Current (pA)')

   annotatePlot('D',18);


    Imax=zeros(size(IVM,2),1);
    tauoff=zeros(size(IVM,2),1);

    [foo, Imax(:), tauoff(:)]=pulseDoseResponse([],model);

       


% tauoff =  [0.2496
%     0.2717
%     2.0993
%    11.3250
%    16.3532
%    18.0294];
% 
% 
% Imax =[2.6238e+02
%    9.6515e+02
%    2.8263e+03
%    2.9466e+03
%    2.8970e+03
%    2.9031e+03];

    % h = errorbar(A.',[mean(I0,2),mean(I10,2),mean(I30,2)],[var(I0,1,2),var(I10,1,2),var(I30,1,2)]);


    subplot(4,2,2);


       h=baroneerr([semtaucurve.';sqrt(var(tauoff,1,2)).'].',[taucurve.';mean(tauoff,2).'].');
       
       %bar formatting 
        set(h(2),'FaceColor',[0 0 0],'LineWidth',2);
        set(h(1),'FaceColor',[0.95 0.95 0.95],'LineWidth',2);
        set(get(gca,'Children'),'LineWidth',1.5);
        set(gca,'FontSize',fs);
 
        %graph formating
        set(gca,'XTickLabel', '');
        annotatePlot('E',18);
        ylabel('\tau_{off} (s)');
        
%         hold off

        subplot(4,2,4);

%         hold on

        
        h=baroneerr([semIcurve.'/1000;sqrt(var(Imax,1,2)/1000).'].',[Icurve.'/1000;mean(Imax/1000,2).'].');
        
        set(h(2),'FaceColor',[0 0 0]);
        set(h(1),'FaceColor',[0.95 0.95 0.95]);
        set(get(gca,'Children'),'LineWidth',1.5);
        hold on
        
        set(gca,'FontSize',fs);

        xlabel('IVM (\muM)')
        ylabel('I_{max} (nA)')
        set(gca,'XTickLabel',['';num2str(IVM.');'']);
        annotatePlot('F',18);
        
        legend('Experimental','Markov Model','Location','NorthWest')
%         
        subplot(4,2,6);
        plotPulseShortPub(pulse1IVM,model);
        
        annotatePlot('G',18);
        
        
        subplot(4,2,8);
        plotPulseShortPub(pulse10IVM,model);
        
        annotatePlot('H',18);
        
%     hold off
%     tightfig(gcf);
end

