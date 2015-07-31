global baseParameters k1 k2 k3 k4 k5 k6 L1 L2 L3 H1 H2 H3 H4 g1 g2 E1 E2 alpha beta;

baseParameters('k1')=0.4;
baseParameters('k2')=600000;
baseParameters('k4')=500000;
baseParameters('k3')=0.5;
baseParameters('k5')=0.6;
baseParameters('k6')=400000;
baseParameters('L1')=0.01;
baseParameters('L2')=0.04;
baseParameters('L3')=0.5;
baseParameters('H1')=0.013;
baseParameters('H2')=0.35;
baseParameters('H3')=1.4;
baseParameters('H4')=0.001;
baseParameters('alpha')=100;
baseParameters('beta')=1.4e-6;
baseParameters('g1')=3e-8;
baseParameters('g2')=8e-8;
baseParameters('E1')=-35e-3;
baseParameters('E2')=-12e-3;


IV(anmarP2X4)
% cf(18);plotNaiveResponse(prol3IVM,anmarP2X4);

% cf(22);plotPulseDoseResponse(anmarP2X4sense);

cf(23);

subplot(2,1,1);
plotPrestimDoseResponsePanel(anmarP2X4);
annotatePlot('A',20);
xlabel('')
set(gca,'XTick',[]);

subplot(2,1,2);
plotPrestimDoseResponsePanel(anmarP2X4sense)
annotatePlot('B',20);

set(gcf,'Color','w')
export_fig 'anmarP2X4_requires_naive_sensitization.tif' '-r200'