function [out1,out2,out3,out4,out5,out6,out7,out8,out9] = globalSetFeval8(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2,out3,out4,out5,out6,out7,out8,out9]=feval(f,varargin{:});
end

