function [out1,out2,out3,out4,out5,out6,out7,out8,out9,out10] = globalSetFeval10(glbl,f,varargin)
    setGlobalStruct(glbl);
    [out1,out2,out3,out4,out5,out6,out7,out8,out9,out10]=feval(f,varargin{:});
end

