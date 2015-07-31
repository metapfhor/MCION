

load('P2X7_mockery.mat')

prol=struct();
prol.conditions={10,70,100};
prol.globals.A=0;
prol.globals.J=0;

prolLo=prol;
prolLo.globals.A=1e-6;

prolMed=prol;
prolMed.globals.A=30e-6;

prolHi=prol;
prolHi.globals.A=100e-6;




cf(911);

subplot(2,3,1);plotNaiveCurrent(prolLo,P2XInact2);
annotatePlot('A',20);
subplot(2,3,4);plotNaiveCurrent(prolLo,P2XInact2noallo);
annotatePlot('B',20);

subplot(2,3,2);plotNaiveCurrent(prolMed,P2XInact2);
subplot(2,3,5);plotNaiveCurrent(prolMed,P2XInact2noallo);

subplot(2,3,3);plotNaiveCurrent(prolHi,P2XInact2);
subplot(2,3,6);plotNaiveCurrent(prolHi,P2XInact2noallo);

set(gcf,'Color','w');
export_fig 'P2X7_mockery.tif' '-r200'



