function [t,I,Y]=naivePerfusionResponseThreeP2X7ASymBack(ton,toff,Ttot,amp)
global a b rb g12 E12;
	dt=0.01;
	A=@(t) amp*(heaviside(t-ton)-heaviside(t-toff));
	
	t=0:dt:Ttot.';
	Y=zeros(length(t),1);
	
	Y(:,1)=-(1/2)*a^2*amp^2*(4*a*amp*b+2*a*amp*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)-2*b^2*rb+rb*b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+b^2+b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+rb^2*b^2)*exp((-a*amp-(1/2)*rb*b-(1/2)*b+(1/2)*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2))*t)/((rb*b*a*amp+b^2*rb+a^2*amp^2)*b*(4*a*amp+rb^2*b-2*rb*b+b))-(1/2)*(4*a*amp*b-2*a*amp*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)-2*b^2*rb-rb*b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+b^2-b*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2)+rb^2*b^2)*a^2*amp^2*exp((-a*amp-(1/2)*rb*b-(1/2)*b-(1/2)*(4*a*amp*b+rb^2*b^2-2*b^2*rb+b^2)^(1/2))*t)/((rb*b*a*amp+b^2*rb+a^2*amp^2)*b*(4*a*amp+rb^2*b-2*rb*b+b))+a^2*amp^2/(rb*b*a*amp+b^2*rb+a^2*amp^2);
	I=getTotalCurrentThreeP2X7ASymBack(Y,-60*10^-3);
end