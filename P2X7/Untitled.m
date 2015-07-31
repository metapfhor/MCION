global baseParameters


for i=1:10
baseParameters('alpha10')=1-i*0.05;
cf(i);plotPanelsResponse(fullP2X7Therm);
end