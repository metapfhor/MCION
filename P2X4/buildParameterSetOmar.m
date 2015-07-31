function param=buildParameterSet(L,X,R)
global baseParameters fparam iparam parami chains;

keys=baseParameters.keys;
params={};
np=0;

chains=containers.Map();
for i=1:length(keys)
    k=keys{i};
    if fparam.isKey(k)==1
        
        if fparam(k)==-1 
            if exist([k '_chain.mat'],'file')==2
                load([k '_chain.mat'])
                chains(k)=chain;
            else
                fparam(k)=1;
            end
            % params{i}={k,baseParameters(k),0,Inf,NaN,Inf,0,0};
        end
    end
end

iparam=containers.Map();
parami=containers.Map();

for i=1:length(keys)
    k=keys{i};
    if fparam.isKey(k)==1  
        if fparam(k)>0 
            np=np+1; 
            params{np}=baseParameters(k);
            iparam(k)=np;
            parami(num2str(np))=k;
        
        end
    end
end
x=[params{:}].';

if nargin==2
    R=zeros(np);
    for i=1:np
        R(i,i)=x(i);
    end
end

param = struct(...
'L', L, ...              % Number of temperature levels
'd', np, ...              % Dimension
'alpha_sw', 0.234, ...   % Desired mean acceptance probability of a swap
'alpha_rwm', 0.234, ...  % Desired mean acceptance probability of RWM step
'rwm_exp', 0.6, ...      % Exponent of random-walk adaptation step size
'rwm_fixed_p', 0, ...    % The probability of drawing from the fixed (initial) proposal
'sw_exp_rm', 0.6, ...    % Exp. of temperature adaptation step size
'theta', zeros(1, L), ... % Initial log-scalings of RWM
'R', R, ...         % Initial Cholesky factor
'x', x, ...     % Starting point
'max',10^9, ...
'min',10^-9, ...
'd_log_T', ones(1,L-1), ... % Initial log diff. of temperatures
'verbose', true, ...     % Whether to show statistics during the run
'rwm_proposal_gen', 'randn', ...   % Unscaled proposal variate generation in RWM
'swap_strategy', 'one_random_swap', ... % The swap strategy function
'sampler_func',@(x)  ParamCheck(x) ,...%negCoop(x,l) %function to be evaluated for definite rejection of any proposals
'loc_shape_adapt', 'mean_cov_adapt', ... % The mean-covariance update function
'separate_shape_adaptation', true,  ... % Whether to use a separate covariance 
...                      % for each temperature
'ram_adapt', true, ...  % Use the robust AM adaptation
'save_memory', false, ... % Save memory by keeping only the coolest chain
'save_temp_adapt', true, ... % Instead of final estimates, record 
...                      % the trajectories of temperature adaptation.
'nthin', 1, ...           % Thinning: Save only every N:th item.
'prior', @(x) 0 ...
);


end