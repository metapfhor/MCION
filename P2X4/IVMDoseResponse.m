function chainPulseDoseResponse(x,model)
    nx=size(x,2);
    IVM=[0,0.3,1,3,6,10];
    taudata=[0.2180,(1.1842-0.2180)*0.3+0.2180, 1.1842, 6.5193,3*(7.8272-6.5193)/7+6.5193,7.8272];
    taucurve=[0.9,0.9,2.8,11.9,16.1,16.6];
    semtaucurve=[0.0567,0.0567,0.1129,1.8645,0.5084,4.0115];
    Icurve=[293,611,2619,2754,2357,2222];
    semIcurve=[56,87,793,587,643,730];
    Imax=zeros(size(IVM,2),nx);
    tauoff=zeros(size(IVM,2),nx);
    for i=1:nx
        [foo, Imax(:,i), tauoff(:,i)]=pulseDoseResponse(x(:,i),model);
        disp(num2str(i));
    end
  

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

    cf(3);
    subplot(2,1,1);


       h=baroneerr([sqrt(var(tauoff,1,2)/nx).';semtaucurve].',[mean(tauoff,2).';taucurve].');
       
       %bar formatting 
        set(h(1),'FaceColor',[0 0 0],'LineWidth',2);
        set(h(2),'FaceColor',[0.95 0.95 0.95],'LineWidth',2);
        set(get(gca,'Children'),'LineWidth',2);
        set(gca,'FontSize',18);
 
        %graph formating
        set(gca,'XTickLabel', '');
        annotatePlot('A',20);
        ylabel('\tau_{off} (s)');
        
%         hold off

        subplot(2,1,2);

%         hold on

        
        h=baroneerr([sqrt(var(Imax,1,2)/(1000*nx)).';semIcurve/1000].',[mean(Imax/1000,2).';Icurve/1000].');
        
        set(h(1),'FaceColor',[0 0 0]);
        set(h(2),'FaceColor',[0.95 0.95 0.95]);
        set(get(gca,'Children'),'LineWidth',2);
        hold on
        
        set(gca,'FontSize',18);

        xlabel('IVM (\muM)')
        ylabel('I_{max} (nA)')
        set(gca,'XTickLabel',['';num2str(IVM.');'']);
        annotatePlot('B',20);
        
        legend('Markov Model','Experimental')
        
%     hold off
%     tightfig(gcf);
end

