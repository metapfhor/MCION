tpre=1;
Tmax=80;

T7=experiment320.data(:,1);
I7=experiment320.data(:,2);

ton=5.1;
ind=T7>=ton-tpre&T7<=Tmax+ton-tpre;

T7=T7(ind);
T7=T7-T7(1);
I7=I7(ind);
I7=I7-max(I7);
I7=-I7/min(I7(T7<4));


indoff=T7>=41.1;
Toff=T7(indoff)-41.1;
Ioff=I7(indoff);


decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
[f7,gof7]=fit(Toff,Ioff,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/2,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);

toff7=(f7.a1*f7.b1+f7.a2*f7.b2)/(f7.a1+f7.a2)

% cf(98);plot(f7,Toff,Ioff)



T4=prol2noIVM.data(:,1);
I4=prol2noIVM.data(:,2);


ton=8.77;
ind=T4>=ton-tpre&T4<=Tmax+ton-tpre;

T4=T4(ind);
T4=T4-T4(1);

I4=I4(ind);
I4=I4-max(I4);
I4=-I4/min(I4(T4<4));



[Imin,indmin]=min(I4);
indoff=T4>=T4(indmin);
Toff=T4(indoff)-T4(indmin);
Ioff=I4(indoff);



decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
[f4,gof4]=fit(Toff,Ioff,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/4,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);

tdes4=(f4.a1*f4.b1+f4.a2*f4.b2)/(f4.a1+f4.a2)

% cf(99);plot(f4,Toff,Ioff);


ton=240.2;
ind=T20>=ton-tpre&T20<=Tmax+ton-tpre;

T2=T20(ind);
T2=T2-T2(1);
I2=I20(ind);
I2=I2-max(I2);
I2=-I2/min(I2(T2<4));

toff=283.3;

indes=T2>=2.872&T2<=44;




Tdes=T2(indes)-2.87;
Ides=I2(indes);

decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
[f2des,gof2]=fit(Tdes',Ides,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/2,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);

tdes2=(f2des.a1*f2des.b1+f2des.a2*f2des.b2)/(f2des.a1+f2des.a2);

cf(32);plot(f2des,Tdes,Ides);


indoff=T2>=toff-ton;
Toff=T2(indoff)-(toff-ton);
Ioff=I2(indoff);
% 
% 
decaybase2 = @(a1,b1,a2,b2,c,x) a1*exp(-x/b1)+a2*exp(-x/b2)+c;
[f2off,gof2]=fit(Toff',Ioff,decaybase2,'StartPoint',[(Ioff(1)-Ioff(end))/2,Toff(end)/2,(Ioff(1)-Ioff(end))/2,Toff(end),Ioff(end)],'Upper',[0,Inf,0,Inf,0],'Lower',[-Inf,0.1,-Inf,0.1,min(Ioff(1),-6e-8)]);

toff2=(f2off.a1*f2off.b1+f2off.a2*f2off.b2)/(f2off.a1+f2off.a2)

cf(34);plot(T7,I7,'-k',T4,I4,'-k',T2,I2,'-k');


pos=get(gca,'Position');

w=x_to_norm(tpre,40+tpre);

space=0.01;
h=0.007;
annotation('Rectangle',[w(1) pos(2)+pos(4)+space w(2)-w(1) h ],'FaceColor',0*[1 1 1]);
set(gca,'YTick',[-1,0])
set(gca,'YtickLabel',{'1','0'})
labelPlot('Time (s)','Current (normalized)',18);

annotation('Textbox','String',['P2X4R, \tau_{des} = ' num2str(tdes4,2) ' s' ],'LineStyle','none','FontSize',18,'Position',[0.246 0.7 0.1 0.1])

annotation('Textbox','String',['P2X2R, \tau_{des} = ' num2str(tdes2,2) ' s' ],'LineStyle','none','FontSize',18,'Position',[0.346 0.35 0.1 0.1])

annotation('Textbox','String',['P2X2R, \tau_{off} = ' num2str(toff2,2) ' s' ],'LineStyle','none','FontSize',18,'Position',[0.57 0.75 0.1 0.1])

annotation('Textbox','String',['P2X7R, \tau_{off} = ' num2str(toff7,2) ' s' ],'LineStyle','none','FontSize',18,'Position',[0.598 0.37 0.1 0.1])

set(gcf,'Color','w')

export_fig 'P2X_kinetics.tif' '-r200'