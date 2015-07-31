Csalt=147*10^-3;
Ckcl=3*10^-3;

I=(Csalt+Ckcl);

N=(9/54.88);

IN=I/N;

BzATP_free_nocal=[0.1,0.3,1,3,10].';
BzATP_tot_nocal=[1,3.2,10,32,100].';

BzATP_free_cal=[0.2,0.5,1.6,5,18].';
BzATP_tot_cal=[3.2,10,32,100,320].';

m_nocal = regress(BzATP_tot_nocal,BzATP_free_nocal);
m_cal = regress(BzATP_tot_cal,BzATP_free_cal);

cf(1);plot(BzATP_tot_nocal,BzATP_free_nocal,BzATP_free_cal,BzATP_tot_cal);
xlabel('Total ATP');
ylabel('Effective ATP')
legend('Calcium Defficient','2 mM Calcium')

%cf(2);plot([3.2,10,32,100,320],[0.2,0.5,1.6,5,18]);

%cf(3);plot([0.1,0.32,1,3.2,10],[0.005,0.02,0.08,0.8,7]);

%cf(4);plot([0.032,0.1,0.32,1,3.2],[0.003,0.01,0.04,0.28,2.2]);