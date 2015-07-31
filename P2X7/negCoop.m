function b = negCoop(x)
global K1 K2 K3 K5 K6 K7 baseModel;
%setParamsfullP2X7Therm(x);
% setParamsfullerP2X7(x);

baseModel.setParams(x);
baseModel.setAuxiliary(x);

% setAuxiliaryfullerP2X7();
if K1>K2 && K2>K3 && K3>1
    b=1;
else
    b=0;
end


% 
% global k1 k2 k3 k4 k5 k6 k7 k8;
% setParamsfullP2X7Therm(x);
% setAuxiliaryfullP2X7Therm(x);
% if 3*k2/k1>k4/k3 && k4/k3>k6/(3*k5) 
%     b=1;
% else
%     b=0;
% end

end


