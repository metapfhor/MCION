load('twalk_P2X4Inact1_var_all2000_steps@20150415T034238.mat')

% 
% cf(15);plotNaiveResponse(pulse1IVM,P2X4Inact1);

cf(577);
subplot(1,2,1);

f='mean';

L1=feval(f,[baseParameters('L11'),baseParameters('L12'),baseParameters('L13'),baseParameters('L14')]);
L2=feval(f,[baseParameters('L21'),baseParameters('L22'),baseParameters('L23'),baseParameters('L24')]);
L3=feval(f,[baseParameters('L31'),baseParameters('L32'),baseParameters('L33'),baseParameters('L34')]);
L4=feval(f,[baseParameters('L41'),baseParameters('L42'),baseParameters('L43'),baseParameters('L44')]);
L5=feval(f,[baseParameters('L51'),baseParameters('L52'),baseParameters('L53'),baseParameters('L54')]);
L6=feval(f,[baseParameters('L61'),baseParameters('L62'),baseParameters('L63'),baseParameters('L64')]);

baseParameters('L11')=L1;
baseParameters('L12')=L1;
baseParameters('L13')=L1;
baseParameters('L14')=L1;

baseParameters('L21')=L2;
baseParameters('L22')=L2;
baseParameters('L23')=L2;
baseParameters('L24')=L2;

baseParameters('L31')=L3;
baseParameters('L32')=L3;
baseParameters('L33')=L3;
baseParameters('L34')=L3;

baseParameters('L41')=L4;
baseParameters('L42')=L4;
baseParameters('L43')=L4;
baseParameters('L44')=L4;

baseParameters('L51')=L5;
baseParameters('L52')=L5;
baseParameters('L53')=L5;
baseParameters('L54')=L5;

baseParameters('L61')=L6;
baseParameters('L62')=L6;
baseParameters('L63')=L6;
baseParameters('L64')=L6;

plotPulseShortPubLarge(pulse1IVM,P2X4Inact1,9);
annotatePlot('A',20);






load('twalk_P2X4Inact1factor_srvr2500_steps@20150420T223841.mat')
 

% cf(51);plotNaiveResponse(pulse1IVM,P2X4Inact1factor);

figure(577);
subplot(1,2,2);

plotPulseShortPubLarge(pulse1IVM,P2X4Inact1factor);
annotatePlot('B',20);


set(gcf, 'Color', 'w');
export_fig P2X4Inact1_effect_of_coop.tiff -r300


