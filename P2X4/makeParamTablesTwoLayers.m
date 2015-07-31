


atp={'k1','k2','k3','k4','k5','k6','k7','k8','k9','k10','k11','k12','k13','k14','k15','k16','k17','k18','k19','k20','k21','k22','k23','k24'};
tbl1=makeParamTable(P2X4Inact2,atp,'ATP binding and unbinding rates in current producing rows.');


datp={'d1','d2','d3','d4','d5','d6','d7','d8','d9','d10','d11','d12','d13','d14','d15','d16','d17','d18','d19','d20','d21','d22','d23','d24'};
tbl2=makeParamTable(P2X4Inact2,datp,'ATP binding and unbinding rates in desensitized rows.');


ivm={'L11','L12','L13','L14','L21','L22','L23','L24','L31','L32','L33','L34','L41','L42','L43','L44','L51','L52','L53','L54','L61','L62','L63','L64'};

tbl3=makeParamTable(P2X4Inact2,ivm,'IVM binding and unbinding rates in current producing rows.');


ec={'delta','epsilon','mu'};

tbl4=makeParamTable(P2X4Inact2,ec,' EC\textsubscript{50} values for fourth order hill functions which govern IVM binding rates.');


mult={'alpha1','beta1','alpha2','beta2','alpha3','beta3'};

tbl5=makeParamTable(P2X4Inact2,mult,' Multipliers on IVM binding and unbinding rates for desensitized rows.');


desense={'kd1','ks1','H11','kd2','ks2','H12','kd3','ks3','H13','kd4','ks4','H14'};

tbl6=makeParamTable(P2X4Inact2,desense,'Desensitization and return from desensitization rates.');

act={'H0','H5','L10','L20','L30','L40','L50','L60'};

tbl7=makeParamTable(P2X4Inact2,act,'Rates of activation and inactivation.');

io={'H3','H3D','H4'};



tbl8=makeParamTable(P2X4Inact2,io,'Rates of internalization and recycling.');


ts=datestr(now,30);


fid=fopen(['paramTable_' P2X4Inact2.name() '_' ts '.tex'],'w'); 

tbls={tbl1,tbl2,tbl3,tbl4,tbl5,tbl6,tbl7,tbl8};


for i=1:length(tbls)
    tbl=tbls{i};
    for j=1:size(tbl,1) 
        fprintf(fid, '%s\n', tbl{j}); 
    end 
    fprintf(fid,'%s\n','');
end

fclose(fid);