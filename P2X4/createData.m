 
m=10;

tau=[17,12,0.3,0.2,0.1]


 conc=[3.2,10,32,100,320]
 
 
 initial_params=init_coeffs(conc,1./tau);
 

  [coeffs,r,J]=nlinfit(conc,1./tau,'sigmoid',initial_params);
  
  cf(1);plot(conc,sigmoid(coeffs,conc),conc,1./tau)