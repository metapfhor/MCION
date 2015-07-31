function d = paramDist(xxp1,xxp2)
global parami
x1=unravelChain(xxp1);
x2=unravelChain(xxp2);

npar=size(x1);
    d=struct();
    for i=1:npar 
        x1m(i)=mode(x1(i,:));
        x2m(i)=mode(x2(i,:));
        desc=abs((x1m(i)-x2m(i))/max(x1m(i),x2m(i)));
        desc=[num2str(100*desc,'%10.5f') ' %'];
        if x2m(i)>x1m(i)
         d.(parami(num2str(i)))=['+ ' desc];
        else
          d.(parami(num2str(i)))=['- ' desc];
        end
    end
    
%     d=abs(x1m-x2m);

end

