load('../Models/calP2X7.mat')
if exist('../Models/fullP2X7 (1).mat','file')>0
    load('../Models/fullP2X7 (1).mat')
else
    load('../Models/fullP2X7.mat')

   
end
load('../Models/anmarP2X7.mat')
load('../Models/fullP2X7Therm.mat')
load('../Models/compP2X7.mat')
load('../Models/hillP2X7.mat')
load('../Models/hill3P2X7.mat')
load('../Models/fullerP2X7.mat')
load('../Models/fullerStickP2X7.mat')
load('../Models/phosph1P2X7.mat')
load('../Models/phosph2P2X7.mat')
load('../Models/phosph3P2X7.mat')
load('../Models/slowSpike.mat')
params24();
Create_experiments();