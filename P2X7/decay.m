function x = decay(x0,tau,tf,dt)
t=[0:dt:tf-dt,tf].';
x=x0*exp(-t/tau);
end

