function results=ec50(conc,responses)
% EC50 Function to fit a dose-response data to a 4 parameter dose-response
%   curve.
% 
% Requirements: nlinfit function in the Statistics Toolbox
%           and accompanying m.files: init_coeffs.m and sigmoid.m
% Inputs: 1. a 1 dimensional array of drug concentrations
%         2. the corresponding m x n array of responses 
% Algorithm: generate a set of initial coefficients including the Hill
%               coefficient
%            fit the data to the 4 parameter dose-response curve using
%               nonlinear least squares
% Output: a matrix of the 4 parameters
%         results[m,1]=min
%         results[m,2]=max
%         results[m,3]=ec50
%         results[m,4]=Hill coefficient
%
% Copyright 2004 Carlos Evangelista 
% send comments to CCEvangelista@aol.com
% Version 1.0    01/07/2004

[m,n]=size(responses);
results=zeros(4,1);

     initial_params=init_coeffs(conc,responses);
     ft = fittype( 'sigmoid2(a,b,c,d,x)' );
%      [coeffs,r,J]=nlinfit(conc,responses,'sigmoid',initial_params);
    f=fit(conc,responses,ft,'StartPoint',initial_params,'Lower',[0,0,0,0.5],'Upper',[Inf,Inf,Inf,10]);
    coeffs=coeffvalues(f);
%    disp (coeffs);
     for j=1:4
         results(j)=coeffs(j);
     end

%disp (results);