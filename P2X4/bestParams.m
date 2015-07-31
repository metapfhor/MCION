function [x,ltx] = bestParams(xxp,lt)
[ltx,i]=max(lt(:));
[i,j,k]=ind2sub(size(lt),i);
npar=size(xxp,1)/2;
if i==1
    x=xxp(1:npar,j,k);
else
    x=xxp(npar+1:2*npar,j,k);
end

end

