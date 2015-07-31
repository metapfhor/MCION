function b = texify(a,f)
if iscellstr(a)
    siz=size(a);
    b=cell(siz);
    for i=1:length(a)
        [~,b{ind2sub(siz,i)}]=system(['node /home/lmackay/P2X7/Model\ Building/texify.js ''' strrep(a{i}, '->', '\rightarrow ') '''']);
        s=b{ind2sub(siz,i)};
        if nargin==1
            b{ind2sub(siz,i)}=['$' s(1:end-1) '$'];
        elseif f
            b{ind2sub(siz,i)}=['$' s(1:end-1) '$'];
        else
            b{ind2sub(siz,i)}=s(1:end-1);
        end
            
%         disp(b{ind2sub(siz,i)});
    end
else
    [~,b]=system(['node /home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Model\ Building/texify.js '''  strrep(a, '->', '\rightarrow ') '''' ]);
    if nargin==1
        b=['$' b(1:end-1) '$'];
    elseif f
        b=['$' b(1:end-1) '$'];
    else
        b= b(1:end-1);
    end
end
end

