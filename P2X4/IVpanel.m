function IV(model) 
ramp=struct();
ramp.conditions={10,20,20};
ramp.globals.A=100e-6;
ramp.globals.J=0;
% cf(3);[e0,ef]=plotIVCurve(ramp,model);
% subplot(1,2,1);
% 
%  xlim([-60e-3,-20e-3]);
% ylims=ylim();
% line(xlim(),[0,0],'LineStyle',':')
% 
% 
% xrev=x_to_norm(e0,ef);
% ynot=y_to_norm(0,0);
% 
% annotation('arrow',[xrev(1),xrev(1)],[ynot(1)+0.05,ynot(1)])
% annotation('arrow',[xrev(2),xrev(2)],[ynot(1)-0.05,ynot(1)])
% 
% annotation('textbox',[xrev(2),ynot(1)-0.05,0,0],'String',num2str(ef/1e-3))
% annotation('textbox',[xrev(1),ynot(1)+0.05,0,0],'String',num2str(e0/1e-3))
% % return;
% 
% % cf(5);plotNaiveResponse(ramp,factorP2X4);
% 





ramp.conditions={20,30,30};
ramp.globals.J=3e-6;
ramp.globals.IVMon=0;
ramp.globals.IVMoff=40;

[e0,ef]=plotIVPanel(ramp,model);

% subplot(1,2,1);
ylim([-1000,500]);
xrev=x_to_norm(e0*1000,ef*1000);
ynot=y_to_norm(0,0);

annotation('arrow',[xrev(1),xrev(1)],[ynot(1)+0.05,ynot(1)])
annotation('arrow',[xrev(2),xrev(2)],[ynot(1)-0.05,ynot(1)])


annotation('textbox',[xrev(2),ynot(1)-0.05,0.1,0],'String',[num2str(ef/1e-3,3) ' mV'],'LineStyle','none')
annotation('textbox',[xrev(1)-0.1,ynot(1)+0.05,0.1,0],'String',[num2str(e0/1e-3,3) ' mV'],'HorizontalAlignment','right','LineStyle','none')

 line(xlim(),[0,0],'LineStyle',':')
% cf(5);plotNaiveResponse(ramp,factorP2X4);
end