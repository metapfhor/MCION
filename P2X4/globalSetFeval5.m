function [out1,out2,out3,out4,out5] = globalSetFeval5(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2,out3,out4,out5]=feval(f,varargin{:});
end

