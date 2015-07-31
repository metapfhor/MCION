function h = fixedHill(n)

    function yhat=hill(params4,x)
% SIGMOID Function to fit data to a four parameter dose response curve
% requires the nlinfit function of the statistics toolbox and a set of 
% initial parameters such as the one generated by init_coeffs.m.
% This function is used by ec50.m
%
% Copyright 2004 Carlos Evangelista 
% send comments to CCEvangelista@aol.com
% Version 1.0    01/07/2004

min=params4(1);
max=params4(2);
ec=params4(3);

yhat=min+(max-min)./(1+(ec./x).^n);
    end
h=@hill;
end

