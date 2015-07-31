function y = plateau(x,a,s)
%y=1/(exp(b*(x-a)+1)*(exp(b*(-x-a)+1)))
%but scaled down to [0,1]
y=zeros(size(x));
sq2=sqrt(2);
y(x<a)=1;

y(x>=a)=exp(-((x(x>=a)-a).^2)/(2*s*s));

% % return;
% y = 1./((exp(b*(x-a))+1).*(exp(b*(-x-a))+1));
y= y - min(y);
y= y/max(y);

end

