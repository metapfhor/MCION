function mockDose()
A=logspace(-7,-4,30);

I1=dr1(A);
I2=dr2(A);
I3=dr3(A);
I4=dr4(A);
cf(73);semilogx(A,I1,A,I2,A,I3,A,I4);
end

