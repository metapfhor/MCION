global H51
load('good_EC50_okay_kinetics_and_amplitudes_2.mat')
baseParameters('H51')=baseParameters('H11');


A=logspace(-7,-1,200).';



P2X4Stack3sub.setParams([]);
I0=prestimDoseResponse(0,P2X4Stack3sub,A);

resp={};
legstr={};

f=[2,4,8,16,32,64,128,256,512];

res=real(ec502(A./1e-6,I0));
legstr{1}=['(1x): I_{max} = ' num2str(res(2)) ' pA, EC_{50} = ' num2str(res(3)) ' \muM, n = ' num2str(res(4)) ];

% semilogx(A,I0);
resp{1}=A;
resp{2}=I0;

for i=1:length(f)
    P2X4Stack3sub.setParams([]);
    H51=H51*f(i);
    I2=prestimDoseResponse(0,P2X4Stack3sub,A);
    resp{2*i+1}=A;
    resp{2*i+2}=I2; 
    
    res=real(ec502(A./1e-6,I2));
    legstr{i+1}=['(' num2str(f(i)) 'x): I_{max} = ' num2str(res(2)) ' pA, EC_{50} = ' num2str(res(3)) ' \muM, n = ' num2str(res(4)) ];

    
    
end

cf(72);

h=semilogx(resp{:});
set(h,'LineWidth',2)
legend(legstr{:},'Location','BestOutside');
labelPlot('[ATP] (M)','Current (nA)',16)
set(gcf,'Color','w');

export_fig 'inactivating_dose_responses.tif' '-r300'


