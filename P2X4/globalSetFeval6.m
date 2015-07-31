function [out1,out2,out3,out4,out5,out6] = globalSetFeval6(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2,out3,out4,out5,out6]=feval(f,varargin{:});
end

