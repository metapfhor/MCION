function [out1,out2,out3,out4,out5,out6,out7,out8] = globalSetFeval8(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2,out3,out4,out5,out6,out7,out8]=feval(f,varargin{:});
end

