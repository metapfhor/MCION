function y = linearPad(x,npad)
%linear interpolates between points in dataset
%adding npad points between each datapoint in x

[npts,nchannels]=size(x);
nout=npts+(npts-1)*npad;
y=zeros(nout,nchannels);
i=1;
nbegin=1;
nend=npad+2;
nlin=npad+2;
while i<npts  
    j=1;
    while j<=nchannels
        y(nbegin:nend,j)=linspace(x(i,j),x(i+1,j),nlin);
        j=j+1;
    end
    nbegin=nend;
    nend=nend+npad+1;
    i=i+1;
end


end

