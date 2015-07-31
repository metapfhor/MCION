function tauoff = lastPulseDeact(exp)
    ton=exp.conditions{1};
    toff=exp.conditions{2};
    T=exp.data(:,1);
    I=exp.data(:,2);
    lastInd=T>=toff(8)&T<ton(9);
    Ilast=I(lastInd);
    Tlast=T(lastInd)-ton(8);
    f=fit(Tlast,Ilast,'exp1');
    hold off;
    cf(1);
    plot(f,Tlast,Ilast);
    drawnow;
    tauoff=coeffvalues(f);
    tauoff=-1/tauoff(2);
end

