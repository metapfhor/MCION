load('twalk_P2X4Inact1_var_all2000_steps@20150415T034238.mat')

cf(999);
plotPulseDoseCurrentAndKinetics(P2X4Inact1)
set(gcf, 'Color', 'w');


export_fig P2X4Inact12_pulse_dose_and_kinetics_.tiff -r300

cf(998);
plotPrestimAndProlonged(P2X4Inact1);
set(gcf, 'Color', 'w');


export_fig P2X4Inact12_prestim_and_prolonged_.tiff -r300


baseParameters('W2')=baseParameters('L20');


add=' Values used in Fig. \ref{fig:A-one-layer} \& \ref{fig:A-one-layer-prolonged}.';


atp={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24'};
tbl1=makeParamLongTable(P2X4Inact12,atp,['ATP binding and unbinding rates in current producing rows.' add]);



ivm={'L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64'};

tbl3=makeParamLongTable(P2X4Inact12,ivm,['IVM binding and unbinding rates in current producing rows.' add]);


ec={'delta','epsilon','mu'};

tbl4=makeParamTable(P2X4Inact12,ec,[' EC\textsubscript{50} values for fourth order hill functions which govern IVM binding rates.' add]);

act={'H0','W2','H5'};

tbl7=makeParamTable(P2X4Inact12,act,['Rates of activation and inactivation.' add]);

io={'H3','H4'};

tbl8=makeParamTable(P2X4Inact12,io,['Rates of internalization and recycling.' add] );


ts=datestr(now,30);


fid=fopen('paramTable_P2X4Inact1.tex','w'); 

tbls={tbl1,tbl3,tbl4,tbl7,tbl8};


for i=1:length(tbls)
    tbl=tbls{i};
    for j=1:size(tbl,1) 
        fprintf(fid, '%s\n', tbl{j}); 
    end 
%     fprintf(fid,'%s\n','');
end

fclose(fid);