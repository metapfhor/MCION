function ensembleChainConvergence(X,beta,sse)
    L=size(X,2);
    Niter=size(X,4);
    N=size(X,3);
    for i=1:100
        if i^2>=2*N+1
            sqr=i;
            break;
        end
    end
    ind=1:Niter;
    
    for i=1:N
        ipar=mod(i,sqr)+floor((i)/sqr)*sqr+floor((i-1)/sqr)*2*sqr;
        itemp=ipar+sqr;
        subplot(sqr,sqr,ipar);
                

        plot(ind,log10(squeeze(abs(X(:,1,i,:))).'));

        if size(beta,2)==1
            title(['Target #' num2str(i) ])
        else
            title(['Target #' num2str(i) ])
        end

        if mod(ipar,sqr)==1
            ylabel('Log_{10}(par.)')
        end
        
        if 2*N+1-ipar<sqr
            xlabel('Iteration')
        end


            subplot(sqr,sqr,itemp);
            plot(ind,squeeze(sse(1,i,:)));
            title(['Error #' num2str(i)]);
            if mod(ipar,sqr)==1
                ylabel('S.S.E(k)');
            end
            axis tight;
            
        if 2*N+1-ipar<sqr
            xlabel('Iteration')
        end
        
    end
            subplot(sqr,sqr,itemp+1);
                
            plot([ind Niter+1],log10(1./beta));
            title('Temperatures');
             ylabel('Log_{10}(T)');
end