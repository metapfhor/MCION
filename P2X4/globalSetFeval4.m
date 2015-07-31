function [out1,out2,out3,out4] = globalSetFeval4(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2,out3,out4]=feval(f,varargin{:});
end

