function [Imax,soln]= prestimDoseResponse(tprestim,model,ATP)
    global prol3IVM J A IVMon IVMoff
    experiment=prol3IVM;
    if tprestim==0
        J0=0;
    else
        J0=experiment.globals.J;
    end
    if nargin==2
        ATP=[0.1,0.3,1,3,10,30,100].'*1e-6;
    end
    
    Imax=zeros(size(ATP));
    twait=5;
    tatp=2;


    IVMon=0;
%     experiment.globals.IVMoff=tprestim+twait+tatp;
    IVMoff=tprestim;
    
    hold off
    soln=cell(size(ATP));
    for i=1:length(ATP)
        A=ATP(i);


        if tprestim~=0
            %set up the experimental conditions to have the prestimulation
            %before ATP is applied
            J=J0;

            [T0,I0,Y0]=model.naivePerfusionResponse(tprestim,tprestim+tatp,tprestim);
            A=ATP(i);
%              J=0;


            %Integrate for another while with ATP present
            if nargout==2
                [T1,I1,Y1]=model.perfusionResponse(Y0(end,:),0,tatp,tatp+twait);
            else
                [T1,I1]=model.perfusionResponse(Y0(end,:),0,tatp,tatp+twait);
            end
            A=ATP(i);
        else

            if nargout==2
                [T1,I1,Y1]=model.naivePerfusionResponse(0,tatp,tatp+twait);
            else
                [T1,I1]=model.naivePerfusionResponse(0,tatp,tatp+twait);
            end
            A=ATP(i);
        end

        if nargout==2
            if tprestim~=0
                soln{i}=struct('T',vertcat(T0,T1+tprestim),'I',vertcat(I0,I1),'Y',vertcat(Y0,Y1));
            else
                soln{i}=struct('T',T1,'I',I1,'Y',Y1);
            end
            A=ATP(i);
        end
%         cf(1);
%         plot(T1,I1);
%         title([num2str(A/1e-6) ' uM ATP ' num2str(tprestim) ' s of pre-stimulation']);
%         drawnow
        Imax(i)=abs(min(I1));

    end

end

