function chainPulseDoseResponse(model)
% global taucurve semtaucurve Icurve semIcurve

taucurve=[3 59 71 71 71 71];
semtaucurve=zeros(size(taucurve));

Icurve=zeros(size(taucurve));
semIcurve=zeros(size(taucurve));

    IVM=[0,0.3,1,3,6,10].';
    taudata=[0.2180,(1.1842-0.2180)*0.3+0.2180, 1.1842, 6.5193,3*(7.8272-6.5193)/7+6.5193,7.8272];
%     taucurve=[0.9,0.9,2.8,11.9,16.1,16.6];
%     taucurve=[0.42,0.54,1.8,12.1,16.7,16.9];
%     semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115];
%     Icurve=[293,611,2619,2754,2357,2222];
%     semIcurve=[56,87,793,587,643,730];

    Imax=zeros(6,1);
    tauoff=zeros(6,1);

    [foo, Imax(:), tauoff(:)]=pulseDoseResponseG45A([],model);

       


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




       h=baroneerr([sqrt(var(tauoff,1,2)).';semtaucurve].',[mean(tauoff,2).';taucurve].');
       
       %bar formatting 
        set(h(1),'FaceColor',[0 0 0],'LineWidth',2);
        set(h(2),'FaceColor',[0.95 0.95 0.95],'LineWidth',2);
        set(get(gca,'Children'),'LineWidth',2);
        set(gca,'FontSize',18);
 
        %graph formating
        set(gca,'XTickLabel', '');
       
        ylabel('\tau_{off} (s)');
        
%         hold off



        xlabel('IVM (\muM)')

        
        legend('Markov Model','Experimental')
        
%     hold off
%     tightfig(gcf);
end

