function [t,I,Y]=naivePerfusionResponseThreeP2X7Sym(ton,toff,Ttot,amp)
global a b g12 E12;
	dt=0.01;
	A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	
	t=0:dt:Ttot.';
	Y=zeros(length(t),1);
	
	Y(:,1)=a^2*amp^2/(b^2+a^2*amp^2+a*amp*b)-(1/2)*a*amp*(a*amp*b+a*amp*(a*amp*b)^(1/2)+b*(a*amp*b)^(1/2))*exp((-a*amp-b+(a*amp*b)^(1/2))*t)/(b*(b^2+a^2*amp^2+a*amp*b))-(1/2)*a*amp*(-b*(a*amp*b)^(1/2)-a*amp*(a*amp*b)^(1/2)+a*amp*b)*exp((-a*amp-b-(a*amp*b)^(1/2))*t)/(b*(b^2+a^2*amp^2+a*amp*b));
	I=getTotalCurrentThreeP2X7Sym(Y,-60*10^-3);
end