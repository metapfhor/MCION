function [x,b]=buildInitialParams()
global baseParameters fparam iparam parami chains pMax pMin;
    keys=baseParameters.keys;

    chains=containers.Map();
    for i=1:length(keys)
        k=keys{i};
        if fparam.isKey(k)==1

            if fparam(k)==-1 

                    if iparam.isKey(k)==1
                        saveParamChain(X,k);
                        load([k '_chain.mat'])
                        chains(k)=chain;
                    else
                        if exist([k '_chain.mat'],'file')==2
                            load([k '_chain.mat'])
                            chains(k)=chain;
                        else
                            fparam(k)=1;
                        end
                    end
                end
                % params{i}={k,baseParameters(k),0,Inf,NaN,Inf,0,0};
        end
    end

    iparam=containers.Map();
    parami=containers.Map();
    
    params={};
    np=0;

    
    b=struct();
    b.max={};
    b.min={};
    b.extent={};
    
    for i=1:length(keys)
        k=keys{i};
        if fparam.isKey(k)==1  
            if fparam(k)>0 
                np=np+1; 
                params{np}=baseParameters(k);
                iparam(k)=np;
                parami(num2str(np))=k;
                if pMax.isKey(k)==1
                    b.max{np}=pMax(k);
                else
                    b.max{np}=Inf;
                end
                if pMin.isKey(k)==1
                    b.min{np}=pMin(k);
                else
                    b.min{np}=0;
                end
                b.extent{np}=b.max{np}-b.min{np};
            end
        end
    end
    x=[params{:}].';
    b.max=[b.max{:}].';
    b.min=[b.min{:}].';
    b.extent=[b.extent{:}].';
end