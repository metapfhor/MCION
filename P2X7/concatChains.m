function Xcat = concatChains(varargin)
    Ntot=0;
    N={};
    for i = 1:length(varargin)
        N{i}=size(varargin{i},3);
        Ntot=Ntot+N{i};
    end
    [Npar,L,N{1}]=size(varargin{1});
    Xcat=zeros(Npar,L,Ntot);
    Xcat(:,:,1:N{1})=varargin{1};
    for i=2:length(varargin)
        Xcat(:,:,N{i-1}+1:N{i-1}+N{i})=varargin{i};
        N{i}=N{i-1}+N{i};
    end
end

