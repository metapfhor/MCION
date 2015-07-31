function lf = logTarget(x,p)
% calculate log target distribution for use in t-walk

    
logP = p.logPrior(x);
if isfinite(logP) && logP~=0
    logL = p.logLikelihood(x);
    lf = logP + logL;
    return;
else
   % disp('Sampled point is outside of support')
	lf = -Inf;
    return;
end


