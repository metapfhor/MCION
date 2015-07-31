function [out1,out2] = globalSetFeval2(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2]=feval(f,varargin{:});
end

