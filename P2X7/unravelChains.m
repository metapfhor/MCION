function Xtot = unravelChains(varargin)
    Ntot=0;
    N={};
    [Npar,L,N{1}]=size(varargin{1});
    for i = 1:length(varargin)
        N{i}=size(varargin{i},3);
        Ntot=Ntot+N{i};
    end
    Xtot=zeros(Npar,Ntot*L);
    Xi=varargin{1};
    for l=1:L
            Xtot(:,1+(l-1)*N{1}:l*N{1})=squeeze(Xi(:,l,:));
    end
    N{1}=L*N{1};
    for i=2:length(varargin)
        Xi=varargin{i};
        for l=1:L
            Xtot(:,N{i-1}+(l-1)*N{i}+1:N{i-1}+l*N{i})=squeeze(Xi(:,l,:));
        end
        if i>1
            N{i}=1+N{i}*L;
        else
            N{i}=N{i-1}+N{i}*L;
        end
        
    end

end

