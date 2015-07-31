function out = globalSetFeval(glbl,f,varargin)
    setGlobalStruct(glbl);
    out=feval(f,varargin{:});
end

