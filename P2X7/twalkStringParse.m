function [x,xp]=twalkStringParse(str)
global baseParameters;

bp0=baseParameters;

a=strsplit(str,'],');
k={};

for i=1:size(a,2)
    t=strsplit(a{i},'=');
    k{i}=strtrim(t{1});
    v{i}=str2num(regexprep(t{2},'[\[\]]',''));
    t=v{i};
    baseParameters(k{i})=t(1);
end

x=buildInitialParams();

for i=1:size(a,2)
    t=v{i};
    baseParameters(k{i})=t(2);
end

xp=buildInitialParams();


baseParameters=bp0;



end