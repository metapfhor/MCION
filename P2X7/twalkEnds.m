function [x,xp] = twalkEnds(xxp)
	n=size(xxp,1)/2;
	x=xxp(1:n,end);
	xp=xxp(n+(1:n),end);
end