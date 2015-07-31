load('good_EC50_okay_kinetics_and_amplitudes.mat');
P2X4StackDeMix3.setParams([]);

[x0,bounds] = buildInitialParams();


[EC,Erev,Imax,tauoff] = mutantSpecificCorrelations2(x0,P2X4StackDeMix3);