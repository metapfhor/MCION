function errFunc=normDataErrorVec(experiment,model)
	%should be called as dataError(experiment1,model1,...experimentN,modelN)
	%returns a function which will give you the SSE of all the experiments and their models
	% SSE=errFunc([parameterValues])
	%each sse is normalized by the number of datapoints in the experiment
	errFunc=@(x,l) 0;
    Nerr=0;

    T=experiment.data(:,1);
    I=experiment.data(:,2);
    Ivar=var(I);
    Imax=max(abs(I));
    nT=length(T);
	


		function err=normErrVec(x)


            setGlobals(experiment.globals);
			model.setParams(x);
            setGlobals(experiment.globals);
            model.overrideGlobals();
			%Acell=A(iexp);
            


			
			if isfield(experiment,'sse')==0 && isfield(experiment,'IVM')==1
                if isfield(experiment,'TriplePulse')==0
                    err=model.naivePerfusionErrVec(experiment.conditions{:},T,I);
                else
                    err=Prol3ErrVecP2X4(experiment.conditions{:},T,I,model);
                end
            elseif isfield(experiment,'sse')==0 && isfield(experiment,'IVM')==0
                %Just added the line below for prolonged application no
                %IVM.
                if isfield(experiment,'DoublePulse')==1
                    err=Prol2ErrVecP2X4(experiment.conditions{:},T,I,model);
                end
            else
                %The _mex thing was just added.
%                 err=feval([experiment.sse model.name '_mex'],experiment.conditions{:},T,I);
%                 err=model.naivePerfusionSSE(experiment.conditions{:},T,I);
                  err=PulseErrVecP2X4(experiment.conditions{:},T,I,model);
            end

			%err=err;%normalize so that # data points does not bias
		end
	
    errFunc=@ normErrVec;
end